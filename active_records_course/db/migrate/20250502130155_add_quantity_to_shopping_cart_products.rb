class AddQuantityToShoppingCartProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :shopping_cart_products, :quantity, :integer, default: 1
  end
end
