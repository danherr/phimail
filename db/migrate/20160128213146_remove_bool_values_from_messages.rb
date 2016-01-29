class RemoveBoolValuesFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :starred
    remove_column :messages, :important
  end
end
