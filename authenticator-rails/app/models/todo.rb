# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  description :text
#  due_date    :datetime
#  priority    :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Todo < ApplicationRecord
  # Aqui va la definición de validaciones
  # validates :title, uniqueness: true, presence: true
  validates :title, presence: true
  validate :due_date_is_valid

  before_validation :set_random_title_if_title_is_nil

  # definir uno a muchos y en plural
  has_many :photos, dependent: :destroy

  private

  def due_date_is_valid
    if due_date < DateTime.now
      errors.add(:due_date, "La fecha de entrega ya paso")
    end
  end

  def set_random_title_if_title_is_nil
    self.title ||= (0...8).map { (65 + rand(26)).chr }.join
  end
end
