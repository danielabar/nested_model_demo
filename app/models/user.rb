# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  has_one :address, dependent: :destroy

  # This version requires the user to always enter an address
  # accepts_nested_attributes_for :address

  # Give the user the option to leave address blank
  # although if they enter in even one address field, then address will be associated
  accepts_nested_attributes_for :address, reject_if: :all_blank

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
