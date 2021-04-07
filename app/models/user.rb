# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :contacts, dependent: :destroy
  accepts_nested_attributes_for :contacts

  validates :first_name, :last_name, presence: true
end
