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
end
