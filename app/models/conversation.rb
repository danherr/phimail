class Conversation < ActiveRecord::Base

  validates :user_id, presence: true;

  belongs_to :user
  belongs_to :meta_conversation

  has_many :message_conversation_links, dependent: :destroy
  has_many :messages, through: :message_conversation_links

  default_scope { order('message_timestamp DESC') }

  def body_preview
    last_message = conversation.messages.order(:time_created).last
    "- " + last_message.body.chars.take(50).join
  end

  def make_draft(target, body)
    self.messages.create({
    source_address: self.user.username + "@" + EMAIL_SIGNATURE,
    target_address: target,
    body: body
    })
  end

  def make_reply(message, body)
    message = self.messages.find(message.id)

    if message
      self.make_draft(message.source_address, body)
    end
  end

  def make_reply_all(message, body)
    message = self.messages.find(message.id)

    if message
      target = message.target_address.split(', ')
      target.push(message.source_address)
      target = target.uniq.join(', ')
      self.make_draft(target, body)
    end
  end

end
