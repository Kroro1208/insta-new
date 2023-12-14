FactoryBot.define do
  factory :user do
    email{ Fake::Internet.unique.email }
    password{ '123456' }
    password_confimation{ '123456'}
    username{ Fake::Name.unique.name } 
  end
end
