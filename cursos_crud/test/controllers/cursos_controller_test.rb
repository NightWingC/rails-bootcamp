require "test_helper"

class CursosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cursos_index_url
    assert_response :success
  end

  test "should get new" do
    get cursos_new_url
    assert_response :success
  end
end
