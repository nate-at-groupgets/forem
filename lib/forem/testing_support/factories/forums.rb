FactoryBot.define do
  factory :forum, :class => Forem::Forum do
    title { "Welcome to Forem!" }
    description { "A placeholder forum." }
    association :category
  end
end
