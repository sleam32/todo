require 'test_helper'

class EntersTaskTest < ActionDispatch::IntegrationTest
  test "enter a list of tasks" do
    Task.create!(title: "First Task!!")
    Task.create!(title: "Git R Done!!")

    assert_equal 2, Task.count
    visit '/tasks'
    assert_include page.body, "Todo"
    assert_include page.body, "First Task!!"
    assert_include page.body, "Git R Done!!"
  end
end