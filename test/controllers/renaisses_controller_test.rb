require "test_helper"

class RenaissesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renaiss = renaisses(:one)
  end

  test "should get index" do
    get renaisses_url
    assert_response :success
  end

  test "should get new" do
    get new_renaiss_url
    assert_response :success
  end

  test "should create renaiss" do
    assert_difference("Renaiss.count") do
      post renaisses_url, params: { renaiss: { author: @renaiss.author, born_died: @renaiss.born_died, date: @renaiss.date, form: @renaiss.form, location: @renaiss.location, school: @renaiss.school, technique: @renaiss.technique, timeframe: @renaiss.timeframe, title: @renaiss.title, type: @renaiss.type, url: @renaiss.url } }
    end

    assert_redirected_to renaiss_url(Renaiss.last)
  end

  test "should show renaiss" do
    get renaiss_url(@renaiss)
    assert_response :success
  end

  test "should get edit" do
    get edit_renaiss_url(@renaiss)
    assert_response :success
  end

  test "should update renaiss" do
    patch renaiss_url(@renaiss), params: { renaiss: { author: @renaiss.author, born_died: @renaiss.born_died, date: @renaiss.date, form: @renaiss.form, location: @renaiss.location, school: @renaiss.school, technique: @renaiss.technique, timeframe: @renaiss.timeframe, title: @renaiss.title, type: @renaiss.type, url: @renaiss.url } }
    assert_redirected_to renaiss_url(@renaiss)
  end

  test "should destroy renaiss" do
    assert_difference("Renaiss.count", -1) do
      delete renaiss_url(@renaiss)
    end

    assert_redirected_to renaisses_url
  end
end
