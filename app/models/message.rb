class Message < ActiveRecord::Base

  validates :source_address, :target_address, presence: true

  has_many :message_conversation_links
  has_many :conversations, through: :message_conversation_links
  has_many :users, through: :conversations

end
