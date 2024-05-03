# == Schema Information
#
# Table name: addresses
#
#  id             :integer          not null, primary key
#  city           :string           not null
#  country        :string           not null
#  state_province :string           not null
#  street         :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer          not null
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :address do
    street { "MyString" }
    city { "MyString" }
    state_province { "MyString" }
    country { "MyString" }
    user { nil }
  end
end
