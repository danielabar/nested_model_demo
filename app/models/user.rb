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

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  # Require the user to always provide an associated address
  # accepts_nested_attributes_for :address

  # Give the user the option to leave address blank
  # although if they enter in even one address field, then address will be associated
  accepts_nested_attributes_for :address, reject_if: :all_blank

  # Only associate address if user has filled in street, city, and state_province, but disregard country
  # accepts_nested_attributes_for :address,
  #                               reject_if: proc { |a|
  #                                            a[:street].blank? && a[:city].blank? && a[:state_province].blank?
  #                                          }

  # Same logic as above, but with a method rather than a proc
  # accepts_nested_attributes_for :address, reject_if: :address_fields_all_blank?

  private

  # Demonstrate use of a method rather than a proc for reject_if option to accepts_nested_attributes_for
  def address_fields_all_blank?(address_attributes)
    address_attributes[:street].blank? && address_attributes[:city].blank? && address_attributes[:state_province].blank?
  end
end
