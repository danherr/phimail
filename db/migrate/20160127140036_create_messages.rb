class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :source_address, null: false
      t.string :target_address, null: false
      t.string :title, index: true
      t.text :body
      t.timestamp :created

      t.timestamps null: false
    end
  end
end
