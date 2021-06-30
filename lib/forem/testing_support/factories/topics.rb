FactoryBot.define do
  factory :topic, :class => Forem::Topic do
    subject { "FIRST TOPIC" }
    association :forum
    association :user
    posts_attributes { [:text => "This is a brand new post"] }

    factory :approved_topic do
      after(:create) do |t|
        t.approve!
      end
    end
  end
end
