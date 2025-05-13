# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  code       :string
#  price      :integer          default(0)
#  stock      :integer          default(0)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  has_many :shopping_cart_products
  # save
  before_create :validate_product
  after_create :send_notification
  after_create :push_notification, if: :discount?
  after_update :update_notification
  before_update :code_notification, if: :code_changed?

  validates :title, presence: { message: "Es necesario definir un valor en el titúlo" }
  validates :code, presence: { message: "Es necesario definir un valor para el code" }
  validates :code, uniqueness: { message: "El codigo %{value} ya esta registrado" }
  # validates :price, length: { minimum: 3, maximum: 10 }
  validates :price, length: { in: 3..10, message: "El precio se encuntra fuera de rango (Min:3, Max:10)" }, if: :has_price?
  validate :code_validate
  validates_with ProductValidator

  scope :available, ->(min = 1) { where("stock >= ?", min) }
  scope :order_price_desc, -> { order("price DESC") }
  scope :available_and_order_price_desc, -> { available.order_price_desc }


  def total
    self.price / 100
  end

  def total_format
    "$#{ self.total }.00 USD"
  end

  def discount?
    self.total < 5
  end

  def has_price?
    !self.price.nil? && self.price > 0
  end

  def self.top_five_available
    self.available.order_price_desc.limit(5).select(:title, :code)
  end
  private

  def code_validate
    if self.code.nil? || self.code.length < 3
      self.errors.add(:code, "El codigo debe poseer al menos 3 caracteres.")
    end
  end

  def validate_product
    puts "\n\n\n>>> Un nuevo producto sera añadido a almacen!"
  end

  def send_notification
    puts "\n\n\n>>>Un nuevo producto fue añadido a almacen: #{self.title} - #{self.total} USD"
  end

  def push_notification
    puts "\n\n\n>>> Un nuevo producto en descuento ya se encuentra disponible: #{self.title}"
  end

  def update_notification
    puts "\n\n\n>>> El producto #{self.title} fue actualizado"
  end

  def code_notification
    puts "\n\n\n>>> El codigo del producto #{self.title} fue actualizado"
  end
end
