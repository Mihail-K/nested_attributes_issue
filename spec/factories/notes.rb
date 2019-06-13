# frozen_string_literal: true

# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  body       :text             not null
#  created_at :datetime         default(NULL), not null
#  updated_at :datetime         default(NULL), not null
#
# Indexes
#
#  index_notes_on_user_id  (user_id)
#

FactoryBot.define do
  factory :note do
    association :user, strategy: :build

    body { Faker::Hipster.paragraph }
  end
end
