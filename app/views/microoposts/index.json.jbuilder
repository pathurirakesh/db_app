json.array!(@microoposts) do |microopost|
  json.extract! microopost, :id, :content, :user_id
  json.url microopost_url(microopost, format: :json)
end
