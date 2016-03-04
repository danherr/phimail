class User < ActiveRecord::Base

  def self.find_by_credentials(username, pass)
    user = User.find_by_username(username)

    user if user.try(:is_pass?, pass)
  end

  validates :fname, :lname, :username, :pass_digest, presence: true
  validate :strong_pass

  has_many :conversations
  has_many :message_conversation_links, through: :conversations
  has_many :messages, through: :conversations
  has_many :sessions

  after_initialize :ensure_profile_pic

  attr_reader :pass

  def pass=(pass)
    @pass = pass
    self.pass_digest = BCrypt::Password.create(pass)
  end

  def is_pass?(pass)
    BCrypt::Password.new(pass_digest).is_password?(pass)
  end

  def drafts
    self.conversations.joins(:messages).where('NOT messages.sent').group('conversations.id')
  end

  def sent_conversations
    self.conversations.joins(:messages).where('messages.sent').group('conversations.id')
  end

  def received_conversations
    self.conversations.where('received')
  end

  private

  def strong_pass
    if self.pass
      errors.add(:Password, "must be at least 8 characters.") unless pass.length >= 8
    end
  end

  def ensure_profile_pic
    self.avatar_url = ActionController::Base.helpers.asset_path("default_user.png") unless self.avatar_url
  end

end
