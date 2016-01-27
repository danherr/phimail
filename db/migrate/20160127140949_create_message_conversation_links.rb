class CreateMessageConversationLinks < ActiveRecord::Migration
  def change
    create_table :message_conversation_links do |t|
      t.integer :conversation_id, null: false, index: true
      t.integer :message_id, null: false, index: true
      t.timestamps null: false
    end
  end
end
