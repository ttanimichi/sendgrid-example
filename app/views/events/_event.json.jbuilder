json.extract! event, :id, :payload, :created_at, :updated_at
json.url event_url(event, format: :json)
