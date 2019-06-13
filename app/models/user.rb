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

  has_many :notes, dependent: :destroy, inverse_of: :user, index_errors: true

  accepts_nested_attributes_for :notes, allow_destroy: true
end
