json.array!(@weeks) do |week|
  json.extract! week, :id, :name, :date_inic, :date_fina, :order_status_id
  json.url week_url(week, format: :json)
end
