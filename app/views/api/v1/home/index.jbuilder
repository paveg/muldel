json.delivery_companies do
  json.array! @delivery_companies do |dc|
    json.dc_id dc.id
    json.dc_contractor dc.contractor
    json.dc_url dc.url
  end
end
