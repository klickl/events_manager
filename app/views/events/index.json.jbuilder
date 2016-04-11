json.array!(@events) do |event|
  json.extract! event, :id, :name, :dateEvent, :description, :email_organizer, :created_at
  json.url event_url(event, format: :json)
end
