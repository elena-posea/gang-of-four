json.array!(@petities) do |petity|
  json.extract! petity, :id, :titlu, :continut, :user_id
  json.url petity_url(petity, format: :json)
end
