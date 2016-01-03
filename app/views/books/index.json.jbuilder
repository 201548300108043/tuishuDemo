json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :publish, :abstract, :picture_url
  json.url book_url(book, format: :json)
end
