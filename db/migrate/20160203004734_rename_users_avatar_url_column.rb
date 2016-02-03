class RenameUsersAvatarUrlColumn < ActiveRecord::Migration
  def change
    rename_column :users, :avater_url, :avatar_url
  end
end
