json.array!(@ambulanceinfos) do |ambulanceinfo|
  json.extract! ambulanceinfo, :id, :name, :contact1, :contact2, :organization_name
  json.url ambulanceinfo_url(ambulanceinfo, format: :json)
end
