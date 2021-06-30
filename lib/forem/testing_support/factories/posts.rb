FactoryBot.define do
  factory :post, :class => Forem::Post do
    text { "This is a brand new post!" }
    association :user

    trait :approved do
     state { 'approved' }
    end

    factory :approved_post, :traits => [:approved]
  end

end
