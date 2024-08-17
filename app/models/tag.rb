# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :articles

  validates :name, presence: true, uniqueness: true
end
