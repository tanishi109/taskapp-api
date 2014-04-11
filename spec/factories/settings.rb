# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :setting do
    name "MyString"
    value "MyString"
<<<<<<< HEAD
    valueType "MyString"
=======
    value-type "MyString"
>>>>>>> 000baa60a10b38ed1fee8819ef98ff820f165a41
    description "MyString"
  end
end
