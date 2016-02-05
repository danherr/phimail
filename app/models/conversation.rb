class Conversation < ActiveRecord::Base

  validates :user_id, presence: true;

  belongs_to :user
  belongs_to :meta_conversation

  has_many :message_conversation_links, dependent: :destroy
  has_many :messages, through: :message_conversation_links

  before_save :ensure_meta

  default_scope { order('message_timestamp DESC') }

  def body_preview
    last_message = conversation.messages.order(:time_created).last
    "- " + last_message.body.chars.take(50).join
  end

  def make_draft(target)
    self.messages.create({
      source_address: self.user.username + "@" + EMAIL_SIGNATURE,
      target_address: target,
      body: " "
    })
  end

  def make_reply(message_id)
    message = self.messages.find(message_id)

    if message
      self.make_draft(message.source_address)
    end
  end

  def make_reply_all(message_id)
    message = self.messages.find(message_id)

    if message
      target = message.target_address.split(', ')
      target.push(message.source_address)
      target = target.uniq.join(', ')
      self.make_draft(target)
    end
  end

  private

  def ensure_meta
    self.meta_conversation = MetaConversation.create unless self.meta_conversation_id
  end

end
