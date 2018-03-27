class Order < ApplicationRecord
  belongs_to :product , required: false
  belongs_to :user , required: false
end
