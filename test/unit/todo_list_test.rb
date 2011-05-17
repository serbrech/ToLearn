require 'test_helper'

class TodoListTest < ActiveSupport::TestCase

  test "add item to list" do
    list = TodoList.new
    item = TodoItem.new
    list.todo_items.create(item)
    assert_equal 1, list.todo_items.size
  end
  
end
