json.array!(@petitions) do |petition|
  json.extract! petition, :id, :titlu, :continut, :user_id
  json.url petition_url(petition, format: :json)
end
