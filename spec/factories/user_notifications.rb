FactoryBot.define do
    factory :user_notification do
        notification { nil }
        user { nil }
        read { false}
    end
end