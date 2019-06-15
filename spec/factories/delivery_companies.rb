FactoryBot.define do
  factory :delivery_company do
    url { 'http://www.example.com' }
    contractor { 0 } # yamato

    trait :sagawa do
      contractor { 1 }
    end
    trait :japan_post do
      contractor { 2 }
    end
    trait :tmg do
      contractor { 3 }
    end
  end
end
