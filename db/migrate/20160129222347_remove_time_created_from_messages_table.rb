class RemoveTimeCreatedFromMessagesTable < ActiveRecord::Migration
  def change
    remove_column :messages, :time_created
  end
end
