json.array!(@comments) do |comment|
  json.extract! comment, :id, :u_id, :b_id, :content, :date
  json.url comment_url(comment, format: :json)
end
