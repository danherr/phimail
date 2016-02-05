class Api::ConversationsController < ApplicationController

  before_action :require_logged_in

  def index
    if params[:context] == "drafts"
      @drafts = true
      conversation_list(:drafts)
    elsif params[:context] == "sent"
      @drafts = false
      conversation_list(:sent_conversations)
    else
      @drafts = false
      conversation_list(:received_conversations)
    end
  end

  def conversation_list listing_method
    @page_number = params[:page].try(:to_i) || 1
    @offset = (@page_number - 1) * 50

    @num_con = current_user.send(listing_method).length

    until @num_con > @offset do
      @offset -= 50
      @page_number -= 1
    end

    until @offset >= 0 do
      @offset += 50
      @page_number += 1
    end

    @conversations = current_user.send(listing_method)
      .limit(50).offset(@offset)

    render :index;
  end


  def create
    @conversation = current_user.conversations.create(conversation_params)

    m_params = message_params.to_hash
    m_params["source_address"] = "#{current_user.username}#{EMAIL_SIGNATURE}"

    @message = @conversation.messages.create(m_params)

    if @message
      render '/api/shared/draft'
    else
      @conversation.destroy
      render json: @message.errors.full_messages, status: 400;
    end
  end

  def show
    @conversation = current_user.conversations.find(params[:id])
    @messages = @conversation.messages

    @conversation.update({read: true});

    render :show
  end


  def update
    @conversation = current_user.conversations.find(params[:id])
    if @conversation && @conversation.update(conversation_params)
      @messages = @conversation.messages
      render :show
    else
      render nothing: true, status: 400
    end
  end


  def batch_update
    conversations = current_user.conversations.find(params[:ids])
    conversations.each {|conversation| conversation.update(conversation_params)}

    index
  end


  def batch_delete
    conversations = current_user.conversations.find(params[:ids])
    conversations.each do |conversation|
      messages = conversation.messages.all
      messages.length
      conversation.destroy
      messages.each {|message| message.garbage_collect}
    end

    index
  end

end
