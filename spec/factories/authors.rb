FactoryGirl.define do
  factory :author do
    sequence(:name) { |n| "author_#{n}" }
  end
end
