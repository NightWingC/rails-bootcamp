# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  visible     :boolean
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Video < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 200, minimum: 2 }

  validate :validate_custom_title

  before_create :before_create_example
  before_save :send_notification
  after_save :send_mail, if: :has_description?
  after_update :show_title


  def has_description?
    !description.nil? && !self.description.empty?
  end

  private

  def show_title
    puts ">>>>>> Estamos en show title metodo"
  end

  def before_create_example
    puts ">>>>>> Create"
  end

  def send_notification
    puts ">>>>>> Nuevo video save"
  end

  def send_mail
    puts ">>>>>> Enviar correo"
  end

  def validate_custom_title
    self.errors.add(:title, "No es posible usar ese titulo") if self.title == "codigo facilito"
  end
end