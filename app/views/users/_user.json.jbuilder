json.extract! user, :id, :name, :password_digest, :usercategory_id, :dob, :email, :family_id,:user_type :created_at, :updated_at
json.url user_url(user, format: :json)
