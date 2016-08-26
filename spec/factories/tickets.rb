FactoryGirl.define do
  factory :ticket do
    name "MyString"
    entries 1
    valid_until "2016-08-26 12:31:20"
    unlimited false
    student nil
  end
end
