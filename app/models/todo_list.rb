class TodoList < ActiveRecord::Base
  has_many :todo_items
  
  attr_reader :todo_items
  
  attr_reader :name
  def initialize
    @todo_items = Array.new
  end
  
  def add(todo)
    @todo_items.push todo
  end
end
