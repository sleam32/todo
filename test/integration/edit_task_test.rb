require 'test_helper'

class EditTaskTest < ActionDispatch::IntegrationTest
  test "edit a task on the list" do
    Task.create!(title: "First Task!!")
    task = Task.last
    task.update!(title: "New First Task!!")

    assert_equal 1, Task.count
    visit '/index'
    assert_include page.body, "Todo"
    assert_include page.body, "New First Task!!"
  end
end

