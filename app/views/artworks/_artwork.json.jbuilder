json.extract! artwork, :id, :title, :autor, :year, :description, :image, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
