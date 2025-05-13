# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image_url  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  todo_id    :integer          not null
#
# Indexes
#
#  index_photos_on_todo_id  (todo_id)
#
# Foreign Keys
#
#  todo_id  (todo_id => todos.id)
#
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should have a title value" do
    photo = Photo.new(image_url: "algo.jpg")
    assert_not photo.save
  end

  test "should have an image_url value" do
    photo = Photo.new(title: "algo.jpg")
    assert_not photo.save
  end
  test "should not save non valid image urls" do
    photo = Photo.new(title: "algo", image_url: "algo")
    assert_not photo.save
  end
  test "should save valid image urls" do
    photo = Photo.new(image_url: "algo.jpg",  title: "Algo")
    assert photo.save
  end
end
