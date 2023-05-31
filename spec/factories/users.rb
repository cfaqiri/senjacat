FactoryBot.define do
  factory :user do
    email { "example@example.com" }
    password { "MyString" }
    encrypted_password { "MyString" }
  end
end
