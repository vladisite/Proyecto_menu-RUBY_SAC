json.array!(@dishes) do |dish|
  json.extract! dish, :id, :description, :dishes_type_id, :local_id, :order_status_id
  json.url dish_url(dish, format: :json)
end
