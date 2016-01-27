class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
