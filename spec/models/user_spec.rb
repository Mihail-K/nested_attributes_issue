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

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  it 'has a valid factory' do
    should be_valid
  end

  it 'is invalid without a first name' do
    user.first_name = nil
    should be_invalid
  end

  it 'is invalid without a last name' do
    user.last_name = nil
    should be_invalid
  end

  context 'with notes' do
    subject(:user) { create(:user, :with_notes) }

    it 'has a valid factory' do
      should be_valid
    end

    it 'is built with notes by the factory' do
      expect(user.notes).to be_present
    end

    it 'reports the index of invalid elements' do
      user.notes_attributes = [{ body: '' }]
      user.validate

      expect(user.errors.keys).to contain_exactly(:'notes[0].body')
    end

    it 'reports the index of an error correctly when the first element is changed' do
      # The invalid element is at index [1].
      user.notes_attributes = [{ id: user.notes.first.id, body: 'new body' }, { body: '' }]
      user.validate

      # When the element at [0] has changed, the error is reported correctly at index [1].
      expect(user.errors.keys).to contain_exactly(:'notes[1].body')
    end

    it 'reports the index of an error correctly when the first element is unchanged' do
      # The invalid element is at index [1].
      user.notes_attributes = [{ id: user.notes.first.id }, { body: '' }]
      user.validate

      # However, the error key is reporting index [0].
      expect(user.errors.keys).to contain_exactly(:'notes[1].body')
    end
  end
end
