json.array!(@railsgirls) do |railsgirl|
  json.extract! railsgirl, :id, :name, :description, :picture, :visit
  json.url railsgirl_url(railsgirl, format: :json)
end
