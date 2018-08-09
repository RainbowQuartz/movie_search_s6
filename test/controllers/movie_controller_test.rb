require 'test_helper'

class MovieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_index_url
    assert_response :success
  end

  test "should get search" do
    get movie_search_url
    assert_response :success
  end

end
