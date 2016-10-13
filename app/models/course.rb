class Course < ApplicationRecord
	has_enumeration_for :status, create_helpers: true

	validates :name, presence: true, length: { maximum: 45 },uniqueness: true
  	validates :description, presence: true, length: { maximum: 45 }
  	validates :status, presence: true, length: { maximum: 1 }
end
