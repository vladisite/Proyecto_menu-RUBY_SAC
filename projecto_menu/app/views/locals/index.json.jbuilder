json.array!(@locals) do |local|
  json.extract! local, :id, :description, :address, :phone, :order_status_id
  json.url local_url(local, format: :json)
end
