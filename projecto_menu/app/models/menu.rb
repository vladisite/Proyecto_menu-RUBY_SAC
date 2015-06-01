class Menu < ActiveRecord::Base
  belongs_to :order_status
  belongs_to :local
  belongs_to :week
  belongs_to :dishes
end
