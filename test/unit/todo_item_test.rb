require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "create todo item is not done" do
     item = TodoItem.new
     assert !item.done
  end
  
  test "completing an item marks it as done" do
    item = TodoItem.new
    item.complete!
    assert item.done
  end
  
end
