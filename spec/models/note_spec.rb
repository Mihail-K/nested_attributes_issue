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

require 'rails_helper'

RSpec.describe Note, type: :model do
  subject(:note) { build(:note) }

  it 'has a valid factory' do
    should be_valid
  end

  it 'is invalid without a user' do
    note.user = nil
    should be_invalid
  end

  it 'is invalid without a body' do
    note.body = nil
    should be_invalid
  end

  it 'is invalid when the body is longer than 5000 characters' do
    note.body = 'a' * 5001
    should be_invalid
  end
end
