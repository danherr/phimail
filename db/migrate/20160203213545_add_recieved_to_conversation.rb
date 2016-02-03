class AddRecievedToConversation < ActiveRecord::Migration
  def change
    add_column :conversations, :recieved, :boolean, default: false
  end
end
