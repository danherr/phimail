class MessageConversationLink < ActiveRecord::Base

  validates :conversation_id, :message_id, presence: true;

  belongs_to :message
  belongs_to :conversation, touch: :message_timestamp
  has_one :user, through: :conversation
  has_one :meta_conversation, through: :conversation

  after_create :mark_conversation_unread;

  private

  def mark_conversation_unread
    self.conversation.update({read: false})
  end

end
