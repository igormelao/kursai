class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.references :student, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.datetime :entry_at

      t.timestamps
    end
  end
end
