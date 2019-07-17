# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :contacts

  validates :name, presence: true
  validates :name, uniqueness: true 
end
