class Message < ActiveRecord::Base

  validates :source_address, :target_address, presence: true

  has_many :message_conversation_links
  has_many :conversations, through: :message_conversation_links
  has_many :users, through: :conversations

  has_one :meta_conversation, through: :message_conversation_links

  default_scope { order('updated_at') }

  def garbage_collect
    if self.message_conversation_links.all.length == 0
      self.destroy
    end
  end

  def send_msg
    unless self.sent
      current_conversation = self.conversations.first
      targets = self.target_address.split(",")
      targets.each do |target|
        target = target.split("@")
        if "@#{target[1]}" == EMAIL_SIGNATURE
          target_user = User.find_by_username(target[0])
          if target_user
            new_conversation = current_conversation.meta_conversation.conversations.find_by_user_id(target_user.id)

            unless new_conversation
              new_conversation = target_user.conversations.create({
                meta_conversation_id: current_conversation.meta_conversation_id,
                title: current_conversation.title
                })
            end

            new_conversation.update({recieved: true});

            unless new_conversation.message_conversation_links.find_by_message_id(self.id)
              new_conversation.message_conversation_links.create({ message_id: self.id })
            end

          end

        else
          # Send to outside email address.
          puts "Outside email."
        end

      end

      self.sent = true;
    end
  end

end
