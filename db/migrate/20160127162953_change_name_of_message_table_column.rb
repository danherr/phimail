class ChangeNameOfMessageTableColumn < ActiveRecord::Migration
  def change

    rename_column :messages, :created, :time_created

    change_column :messages, :time_created, :datetime, null: false, index: true
  end
end
