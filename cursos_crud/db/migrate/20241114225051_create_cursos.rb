class CreateCursos < ActiveRecord::Migration[7.2]
  def change
    create_table :cursos do |t|
      t.string :title
      t.string :description
      t.boolean :published, default: false
      # t.boolean :visible, default: false

      t.timestamps # created_at & updated_at
    end
  end
end
