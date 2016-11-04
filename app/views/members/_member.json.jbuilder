json.extract! member, :id, :name, :dob, :phone_number, :sex, :membership, :password_digest, :team_id, :created_at, :updated_at
json.url member_url(member, format: :json)