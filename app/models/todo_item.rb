class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  
  def complete!
    self.done = true
  end
end
