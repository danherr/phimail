class CreateMetaConversations < ActiveRecord::Migration
  def change
    create_table :meta_conversations do |t|
      t.timestamps null: false
    end

    add_column :conversations, :meta_conversation_id, :integer
  end
end
