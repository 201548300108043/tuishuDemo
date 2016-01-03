json.array!(@courses) do |course|
  json.extract! course, :id, :cid, :cname, :chour, :credit, :tname
  json.url course_url(course, format: :json)
end
