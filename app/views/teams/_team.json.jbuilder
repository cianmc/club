json.extract! team, :id, :name, :fixture_id, :coach_id, :created_at, :updated_at
json.url team_url(team, format: :json)