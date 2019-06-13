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

class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
end
