class AddMessageUpdatedColumnToConversationsTable < ActiveRecord::Migration
  def change
    add_column :conversations, :message_timestamp, :datetime
  end
end
