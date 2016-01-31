class AddIndexesToTimestampsInMessagesAndConversations < ActiveRecord::Migration
  def change
    add_index :messages, :updated_at

    add_index :conversations, :message_timestamp
  end
end
