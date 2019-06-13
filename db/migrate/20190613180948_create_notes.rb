# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.belongs_to  :user, null: false, foreign_key: true, index: true
      t.text        :body, null: false
      t.timestamps  null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
