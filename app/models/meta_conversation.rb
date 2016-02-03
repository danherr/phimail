class MetaConversation < ActiveRecord::Base

  has_many :conversations
  has_many :users, through: :conversations

end
