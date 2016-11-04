json.extract! coach, :id, :name, :phone_number, :email, :garda_vetted, :created_at, :updated_at
json.url coach_url(coach, format: :json)