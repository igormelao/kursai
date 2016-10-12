class Student < ApplicationRecord

	has_enumeration_for :status, create_helpers: true

	validates :name, presence: true, length: { maximum: 45 }
	validates :register_number, presence: true, length: { maximum: 45 }, uniqueness: true
	validates :status, presence: true, length: { maximum: 1 }
end
