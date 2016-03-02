class Session < ActiveRecord::Base

  belongs_to :user

  def self.new_session_token
    token = SecureRandom.urlsafe_base64

    while Session.exists?(session_token: token)
      token = SecureRandom.urlsafe_base64
    end

    token
  end

  def self.end_session!(session_token)
    session = Session.find_by_session_token(session_token)

    if session
      session.destroy!
    end
  end

  def self.new_session!(user)
    token = Session.new_session_token

    user.sessions.create(session_token: token)

    token
  end

end
