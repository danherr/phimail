class Conversation < ActiveRecord::Base

  validates :user_id, presence: true;

  belongs_to :users

  has_many :message_conversation_links, dependent: :destroy
  has_many :messages, through: :message_conversation_links

  default_scope { order('message_timestamp DESC') }

  def body_preview
    last_message = conversation.messages.order(:time_created).last
    "- " + last_message.body.chars.take(50).join
  end

end
