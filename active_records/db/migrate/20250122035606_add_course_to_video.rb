class AddCourseToVideo < ActiveRecord::Migration[7.2]
  def change
    add_reference :videos, :course, null: false, foreign_key: true
  end
end
