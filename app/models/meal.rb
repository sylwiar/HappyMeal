class Meal < ActiveRecord::Base
  validates :name, :price, :order_id, :user_id, presence: true

  belongs_to :user
  belongs_to :order
end
