class TodoList
  attr_reader :tasks, :user

  def initialize(user)
    @tasks = []
    @user = user
  end

  def add_task(task)
    @tasks.push(task)
  end

  def delete_task(task_id)
    @tasks.delete_if { |task| task.id == task_id }
  end

  def find_task_by_id(task_id)
    @task = @tasks.find { |task| task.id == task_id }
  end

  def sort_by_created order_by="desc"
    if(order_by.downcase == "desc")
      @tasks.sort! { |task1, task2| task2.created_at <=> task1.created_at }
    elsif(order_by.downcase == "asc")
      @tasks.sort! { | task1, task2 | task1.created_at <=> task2.created_at }
    end
  end
end