class Order < ActiveRecord::Base
  kinds = %w(Draft Finalized Ordered Delivered)
  validates :restaurant_name, presence: true
  validates :status, inclusion: { in: kinds }

  belongs_to :owner, class_name: "User"
  has_many :meals
  has_many :users, through: :meals
end