class Dish < ActiveRecord::Base
  belongs_to :dishes_type
  belongs_to :local
  belongs_to :order_status
end
