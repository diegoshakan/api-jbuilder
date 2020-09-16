class User < ApplicationRecord
  has_many :contacts, dependent: :destroy
end
