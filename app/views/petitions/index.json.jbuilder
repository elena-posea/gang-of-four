json.array!(@petitions) do |petition|
  json.extract! petition, :id, :titlu, :continut, :user_id, :tag_list
  json.url petition_url(petition, format: :json)
end
