FactoryGirl.define do

  factory :order do
    restaurant_name "Restaurant"
    status "Opened"
  end

  factory :user do
    name "MyString"
  end
end

