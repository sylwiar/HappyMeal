FactoryGirl.define do    

  factory :order do
    restaurant_name "Restaurant"
    status "Opened"
  end

  factory :user do
    name "MyString"
  end

  factory :meal do
    name "Ramen"
    price 29.00
    order_id
    user_id
  end
end