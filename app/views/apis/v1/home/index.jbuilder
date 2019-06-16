# frozen_string_literal: true

json.delivery_companies do
  json.array! @delivery_companies do |dc|
    json.id dc.id
    json.url dc.url
    json.contractor dc.contractor
  end
end
