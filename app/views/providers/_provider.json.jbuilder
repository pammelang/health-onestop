json.extract! provider, :id, :name, :location, :services_id, :username, :password_digest, :created_at, :updated_at
json.url provider_url(provider, format: :json)
