class Conversation < ActiveRecord::Base

  validates :user_id, presence: true;

  belongs_to :users

  has_many :message_conversation_links
  has_many :messages, through: :message_conversation_links

  def body_preview
    last_message = conversation.messages.order(:time_created).last
    "- " + last_message.body.chars.take(50).join
  end

  def people_involved
    
  end

end
