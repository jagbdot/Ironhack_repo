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
      @created_at = Time.now.strftime("%m/%d/%Y")
      @content = string
    end
end



