class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :fname, null: false
      t.string  :lname, null: false
      t.string  :username, null: false
      t.string  :session_token, null: false
      t.string  :pass_digest, null: false
      t.date    :birthday
      t.integer :phone_number
      t.string  :outside_email
      t.string  :avater_url

      t.timestamps null: false
    end

    add_index :users, :username, unique: true;
    add_index :users, :session_token, unique: true;
  end
end
