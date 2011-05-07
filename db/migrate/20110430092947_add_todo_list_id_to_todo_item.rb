class AddTodoListIdToTodoItem < ActiveRecord::Migration
  def self.up
    change_table :todo_items do |t|
      t.integer :todo_list_id
    end
  end

  def self.down
    change_table :todo_items do |t|
      t.remove :todo_list_id
    end
  end
end