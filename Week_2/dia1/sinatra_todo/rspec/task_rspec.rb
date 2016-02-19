require "rspec"
require_relative("../task.rb")

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
    it "reload de string" do
      string = "new string"
      task_example.update_content!(string)
      expect(task_example.content).to eq("new string")
    end
  end
  describe "#updated_at!" do
    it "whenever the update_content! method is called, it should change the updated_at to the current time" do
      current_time = Time.now.strftime("%m/%d/%Y")
      task_example.update_content!("lala")
      expect(task_example.created_at).to eq(current_time)
    end
  end
end
