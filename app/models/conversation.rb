class Conversation < ActiveRecord::Base

  validates :user_id, presence: true;

  belongs_to :users

  has_many :message_conversation_links
  has_many :messages, through: :message_conversation_links

end
