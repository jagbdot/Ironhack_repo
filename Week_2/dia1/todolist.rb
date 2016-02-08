require "rspec"
require "pry"

class Task
    attr_reader :content, :id, :complete, :created_at, :update_at
    @@current_id = 1
    def initialize(content, complete = false, created_at = Time.now, update_at = Time.now)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = complete
        @created_at = created_at
        @update_at = update_at
    end
    def complete?
      @complete
    end
    def complete!
      @complete = true
    end
    def make_incomplete!
      @complete = false
    end
    def created_at
      @created_at
    end
    def update_content! (string)
      @string = string
      @update_at = update_at
    end
end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2

puts task.complete?
puts task.complete!

RSpec.describe "Task" do

  let (:task_example) { Task.new("Buy the milk") }

  describe "#completed?" do
    it "return false if complete " do
      expect(task_example.complete?).to eq(false)
    end
  end
  describe "#completed!" do
    it "change the status of the variable" do
      expect(task_example.complete!).to eq(true)
    end
  end
  describe "#make_incomplete!" do
    it "change the status of the variable" do
      expect(Task.new("buy the milk", true).make_incomplete!).to eq(false)
    end
  end
  describe "#created_at" do
    it "it returns the variable of created_at instansed in the class" do
      @created_at = Time.now.strftime("%m/%d/%Y")
      expect(Task.new("buy the milk").created_at.strftime("%m/%d/%Y")).to eq(@created_at)
    end
  end
  describe "#update_content!" do
    it "changes the content with a new string" do
      @string = "new string"
      expect(Task.new("new string").update_content!).to eq(string)
    end
  end
  describe "#update_content" do
    it "the update_content shoud change to the current time" do
      @update_at = Time.now.strftime("%m/%d/%Y")
      expect(Task.new("Perro en dos patas").update_content!).to eq(@update_at)
    end
  end
end
