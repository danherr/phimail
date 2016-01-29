class AddBoolValuesToConversations < ActiveRecord::Migration
  def change
    add_column :conversations, :starred, :boolean, default: false
    add_column :conversations, :important, :boolean, default: false
  end
end
