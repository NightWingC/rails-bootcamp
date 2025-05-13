# == Schema Information
#
# Table name: shopping_carts
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(FALSE)
#  status     :integer          default(0)
#  total      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_shopping_carts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :shopping_cart_products
  has_many :products, through: :shopping_cart_products

  enum status: [ :created, :canceled, :payed, :completed ]

  def price
    self.total / 100
  end

  def update_total!
    self.update(total: self.get_total)
  end

  def payed!
    ActiveRecord::Base.transaction do
      self.updated!(status: :payed)
      self.products.select("products.id, products.title, products.code, product.stock, products.price, shopping_cart_products.quantity").each do | product |
        product.update!(stock: product.stock - product.quantity)
      end
    end
  end
  # Get total

  def get_total
    Product
      .joins(:shopping_cart_products)
      .where(shopping_cart_products: { shopping_cart_id: self.id })
      .select("SUM(products.price * shopping_cart_products.quantity) AS t")[0].t
  end

  # def get_total
  #   ShoppingCart
  #     .joins(:shopping_cart_products)
  #     .joins(:products)
  #     .where(shopping_carts: { id: self.id })
  #     .group(:shopping_cart_products)
  #     .select("SUM(products.price) AS total")[0]
  #     .total
  # end

  # def get_total
  #   total = 0
  #   # self.shopping_cart_products.includes(:product).each do |scp|
  #   #   total += scp.product.price
  #   # end
  #   self.products.each do |product|
  #     total += product.price
  #   end
  #   total
  # end

  def get_all_product
    self.joins("LEFT JOIN shopping_cart_products ON products.id = shopping_cart_products.shopping_cart_id").where(shopping_cart_products: { id: nill })
  end

  # def products
  #   Product.joins(:shopping_cart_products)
  #     .where(shopping_cart_products: { shopping_cart_id: self.id })
  #     .group("products.id")
  #     .select("COUNT(products.id) AS quantity, products.id, products.title, products.price")
  # end
end
