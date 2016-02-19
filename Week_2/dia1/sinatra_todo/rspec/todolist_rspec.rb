require "rspec"
require_relative("../todolist.rb")
require_relative("../task.rb")

RSpec.describe "Task" do

  let (:todoList) { TodoList.new }

  describe "#add_task?" do
    it "It should add a task in the task list" do
      expect(todoList.add_task("task2")).to eq(true)
    end
  end
  describe "#delete_task?" do
    it "It should delete a task by its ID" do
      new_task = Task.new("Buy the milk")
      todoList.add_task(new_task)
      expect(todoList.delete_task(1)).to eq([])
    end
  end
  describe "#find_task?" do
    it "It should find a task by its ID" do
      todo_list = TodoList.new
      task1 = Task.new("Buy the milk")
      todo_list.add_task(task1)
      expect(todoList.find_task(1)).to eq(task1.id)
    end
  end
end
