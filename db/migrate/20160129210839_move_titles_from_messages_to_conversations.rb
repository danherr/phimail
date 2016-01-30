class MoveTitlesFromMessagesToConversations < ActiveRecord::Migration
  def change
    remove_column :messages, :title

    add_column :conversations, :title, :string
  end
end
