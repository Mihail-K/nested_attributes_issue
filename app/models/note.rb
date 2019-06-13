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

class Note < ApplicationRecord
  belongs_to :user, inverse_of: :notes

  validates :body, presence: true, length: { maximum: 5000 }
end
