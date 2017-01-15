require 'pry'

class Task
    
    attr_reader :content, :id, :completed, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @completed = false
        @created_at = Time.now
        @updated_at = nil
        @@current_id += 1
    end

    def complete?
    	@completed
    end

    def complete!
    	@completed = true
    end

    def make_incomplete!
        @completed = false
    end

    def update_content!(content)
        @content=content
        @updated_at = Time.now
        return content


    end

end

class TodoList
    attr_reader :tasks, :user
   
    def initialize buyer
        @tasks = []
        @user = buyer
    end
    
    def add_task(task)
        @tasks.push(task)
    end

    def delete_task(task_id)
        @tasks.delete_if {|task| task.id==task_id}
    end

    def find_task_by_id(task_id)
        @task = @tasks.find {|task| task.id==task_id}
    end

    def sort_by_created order_by = "DESC"
        if(order_by== "DESC")
            @tasks.sort do |task1,task2|
                task2.created_at <=> task1.created_at
            end
        elsif (order_by =="ASC")
            @tasks.sort do |task1,task2|
                task1.created_at <=> task2.created_at
            end
        end
    end

end
