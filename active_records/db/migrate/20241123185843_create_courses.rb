class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :title, default: ''

      t.timestamps
    end
  end
end
