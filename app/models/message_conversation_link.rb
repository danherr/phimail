class MessageConversationLink < ActiveRecord::Base

  validates :conversation_id, :message_id, presence: true;

  belongs_to :message
  belongs_to :conversation, touch: :message_timestamp
  has_one :user, through: :conversation

end
