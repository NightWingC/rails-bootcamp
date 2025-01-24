class CreateAddVisibleToCategories < ActiveRecord::Migration[7.2]
  def change
    add_column :categories, :visible, :boolean, default: true
  end
end
