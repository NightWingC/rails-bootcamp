class AddVisibleToCursos < ActiveRecord::Migration[7.2]
  def change
    add_column :cursos, :visible, :boolean
  end
end
