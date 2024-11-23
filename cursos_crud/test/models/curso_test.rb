# == Schema Information
#
# Table name: cursos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  published   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  visible     :boolean
#
require "test_helper"

class CursoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
