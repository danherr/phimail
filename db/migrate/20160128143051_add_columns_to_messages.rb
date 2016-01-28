class AddColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :starred, :boolean, default: false
    add_column :messages, :important, :boolean, default: false
  end
end
