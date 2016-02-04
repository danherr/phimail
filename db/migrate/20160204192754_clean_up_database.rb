class CleanUpDatabase < ActiveRecord::Migration
  def change
    rename_column :conversations, :recieved, :received
  end
end
