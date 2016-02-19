require "pry"

class TodoList
    attr_reader :tasks
    def initialize
      @tasks = []
    end
    def add_task(task)
      @tasks << task ? true : false
    end
    def delete_task(number)
      @tasks.delete_if {|task| task.id == number }
    end
    def find_task (number)
      @tasks.each { |task| task.id == number }
    end
end


