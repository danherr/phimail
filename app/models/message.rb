class Message < ActiveRecord::Base

  validates :source_address, :target_address, :time_created, presence: true

  has_many :message_conversation_links
  has_many :conversations, through: :message_conversation_links
  has_many :users, through: :conversations

  after_initialize :ensure_time_created


  private

  def ensure_time_created
    self.time_created = Time.now if self.time_created.nil?
  end

end
