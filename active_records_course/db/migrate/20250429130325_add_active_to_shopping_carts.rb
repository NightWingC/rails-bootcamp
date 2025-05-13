class AddActiveToShoppingCarts < ActiveRecord::Migration[7.2]
  def change
    add_column :shopping_carts, :active, :boolean, default: false
  end
end
