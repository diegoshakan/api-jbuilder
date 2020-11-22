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
class Contact < ApplicationRecord
  belongs_to :user

  validates :phone, :email, presence: true
end
