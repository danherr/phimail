class MessageConversationLink < ActiveRecord::Base

  validates :conversation_id, :message_id, presence: true;

  belongs_to :message
  belongs_to :conversation
  has_one :user through: :conversation

end
