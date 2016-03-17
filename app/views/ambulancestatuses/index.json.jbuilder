json.array!(@ambulancestatuses) do |ambulancestatus|
  json.extract! ambulancestatus, :id, :status
  json.url ambulancestatus_url(ambulancestatus, format: :json)
end
