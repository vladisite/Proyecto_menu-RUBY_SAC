class OrderDetail < ActiveRecord::Base
  belongs_to :order_header
end
