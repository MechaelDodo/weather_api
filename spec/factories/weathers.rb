FactoryBot.define do
  factory :weather do
    sequence(:time) { |n| Time.at(1621823790+60*60*n).to_datetime }
    sequence(:temperature) { |n| n }
  end
end
