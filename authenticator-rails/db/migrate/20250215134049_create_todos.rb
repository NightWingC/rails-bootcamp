class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.integer :priority

      t.timestamps
    end
  end
end
