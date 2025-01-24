# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  visible     :boolean          default(FALSE)
#  duration    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  course_id   :integer          not null
#
class Video < ApplicationRecord
  # Pertenece a:
  belongs_to :course
  has_many :video_categories
  has_many :comments, as: :commentable

  has_many :categories, through: :video_categories, after_add: :new_category
  has_many :categories, -> { order("id DESC") }, through: :video_categories
  has_many :categorias_visbles, -> { where("categories.visible = ?", true) }, through: :video_categories, source: :category
  has_many :categorias_hidden, -> { where("categories.visible = ?", false) }, through: :video_categories, source: :category



  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 200, minimum: 2 }
  validate :validate_custom_title

  # before_create :before_create_example
  # before_save :send_notification
  # after_save :send_mail, if: :has_description?
  # after_update :show_title

  scope :has_duration, -> { where("duration >= ?", 0) }
  scope :has_description, -> { where.not(description: nil) }
  scope :has_description_and_duration, -> { where.not(description: nil).where.not(description: nil) }

  def has_description?
    !description.nil? && !self.description.empty?
  end

  private

  def new_category(category)
    puts ">>> Se añadio al video #{ title } la category #{ category.title }"
  end

  # def show_title
  #   puts ">>>>>> Estamos en show title metodo"
  # end

  # def before_create_example
  #   puts ">>>>>> Create"
  # end

  # def send_notification
  #   puts ">>>>>> Nuevo video save"
  # end

  # def send_mail
  #   puts ">>>>>> Enviar correo"
  # end

  def validate_custom_title
    self.errors.add(:title, "No es posible usar ese titulo") if self.title == "codigo facilito"
  end
end
