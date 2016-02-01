
json.extract! @user, :id, :fname, :lname, :username, :birthday, :phone_number, :outside_email

json.avatar_url asset_path("default_user.png")
