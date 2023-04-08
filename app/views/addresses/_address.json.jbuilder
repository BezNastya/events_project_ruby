json.extract! address, :id, :country, :city, :region, :street, :building_number, :additional_info, :created_at, :updated_at
json.url address_url(address, format: :json)
