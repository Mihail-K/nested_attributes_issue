# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         default(NULL), not null
#  updated_at :datetime         default(NULL), not null
#

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    trait :with_notes do
      transient do
        notes_count { 3 }
      end

      after(:build) do |user, e|
        user.notes = build_list(:note, e.notes_count, user: user)
      end
    end
  end
end
