class CreatePokemons < ActiveRecord::Migration[7.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
