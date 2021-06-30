FactoryBot.define do
  factory :user do |f|
    login { "forem_user" }
    email { "bob#{rand(100000)}@boblaw.com" }
    password { "password" }
    password_confirmation { "password" }
    forem_auto_subscribe { true }

    factory :admin do
      forem_admin { true }
    end
    
    factory :not_autosubscribed do
      forem_auto_subscribe { false }
    end
  end
end

