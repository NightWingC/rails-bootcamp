# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Course < ApplicationRecord
  # Nombre de tabla plural
  has_many :videos
  has_many :categories, through: :videos, source: :categories
  has_many :comments, as: :commentable

  def self.has_videos
    # joins(:videos)
    joins(:videos).where("videos.visible =?", true)
    # joins(:videos).where( videos: { visible: true })
    # joins("INNER JOIN videos ON courses.id = videos.course_id  ").where(videos: { visible: true })
  end

  def self.no_has_videos
    joins("LEFT JOIN videos ON courses.id = videos.course_id  ").where("videos.id is NULL")
  end
end
