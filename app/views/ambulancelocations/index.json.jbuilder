json.array!(@ambulancelocations) do |ambulancelocation|
  json.extract! ambulancelocation, :id, :latitude, :longitude, :address
  json.url ambulancelocation_url(ambulancelocation, format: :json)
end
