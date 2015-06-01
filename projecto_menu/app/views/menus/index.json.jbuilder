json.array!(@menus) do |menu|
  json.extract! menu, :id, :date_menu, :stock, :price, :date_register, :order_status_id, :local_id, :week_id, :dishes_id
  json.url menu_url(menu, format: :json)
end
