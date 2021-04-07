# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  phone       :string
#  email       :string
#  is_whatsapp :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
FactoryBot.define do
  factory :contact do
    phone { FFaker::PhoneNumberBR.international_home_work_phone_number }
    email { FFaker::Internet.email }
    is_whatsapp { FFaker::Boolean.random }
  end
end
