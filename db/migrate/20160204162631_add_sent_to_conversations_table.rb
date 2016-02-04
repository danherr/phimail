class AddSentToConversationsTable < ActiveRecord::Migration
  def change
    add_column :conversations, :sent, :boolean, default: false
  end
end
