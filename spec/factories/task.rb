FactoryBot.define do

  factory :task do
    name { Faker::Name.name } 
    status { Faker::Boolean.boolean }
    date { Faker::Date.between(from: 2.days.ago, to: Date.today) }
    project
  end

end 