json.array!(@attenders) do |attender|
  json.extract! attender, :id, :user_id, :event_id
  json.url attender_url(attender, format: :json)
end
