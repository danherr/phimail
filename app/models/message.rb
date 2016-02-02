class Message < ActiveRecord::Base

  validates :source_address, :target_address, presence: true

  has_many :message_conversation_links
  has_many :conversations, through: :message_conversation_links
  has_many :users, through: :conversations

  default_scope { order('updated_at') }

  def garbage_collect
    if self.message_conversation_links.all.length == 0
      self.destroy
    end
  end

end
