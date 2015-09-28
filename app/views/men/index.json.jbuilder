json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :telephone, :other
  json.url customer_url(customer, format: :json)
end
