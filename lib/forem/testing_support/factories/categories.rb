FactoryBot.define do
  factory :category, :class => Forem::Category do
    name { "Test Category" }
  end
end