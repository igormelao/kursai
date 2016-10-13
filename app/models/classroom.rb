class Classroom < ApplicationRecord
  belongs_to :student, inverse_of: :classrooms
  belongs_to :course, inverse_of: :classrooms

  validates :entry_at, presence: true
  validates :student, presence: true
  validates :course, presence: true
  validates :student_id, uniqueness: { scope: :course_id }
end
