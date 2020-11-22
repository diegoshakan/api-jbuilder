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
require 'rails_helper'

RSpec.describe Contact, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  context 'validates' do
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
