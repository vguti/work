=begin
require_relative "../todolist.rb"
require 'spec_helper'
require 'rspec'

describe ".status" do
	it "incomplete when initialized" do	
		str = "sacar al perro"
		expect(Task.new(str).complete?).to eq(false)
	end

	it "complete when complete!" do	
		str = "sacar al perro"
		expect(Task.new(str).complete!).to eq(true)
	end

	it "make incomplete!" do
		str = Task.new("sacar al perro")
		str.complete!
		expect(str.make_incomplete!).to eq(false)
	end

	it "update_content!" do
		str = Task.new("sacar al perro")
		expect(str.update_content!("asar manteca")).to eq("asar manteca")
	end
end
describe ".todolist" do
	it "adds task to list" do
		task1=Task.new("correr")
		list1=TodoList.new
		expect(list1.add_task(task1)).to include(task1)
	end
	it ".delete task with id" do
		task1=Task.new("correr")
		task2=Task.new("jugar")
		list1=TodoList.new
		list1.add_task(task1)
		list1.add_task(task2)
		expect(list1.delete_task(1)).to not include(task1)
	end



end
=end


require 'rspec'
require_relative "../todolist.rb"

RSpec.describe "TODO_list tests" do
  let(:todo) { TodoList.new("Pau") }
  let(:task) { Task.new "Walk the dog" }
  let(:task2) { Task.new "Buy some milk" }
  let(:time_format) { "%d-%m-%y %H:%M:%S" }

  describe "Initialize" do
    it "the id's of the Task class by default is unique and auto incremental" do
      expect(task.id).to eq(1)
    end
    it "Check if the value input is correct" do
      expect(task.content).to eq("Walk the dog")
    end
    it "Check if the default value of completed is false" do
      expect(task.completed).to be false
    end
    it "Check if the creation date is OK" do
      expect(task.created_at.strftime(time_format)).to eq(Time.now.strftime(time_format))
    end
  describe "#complete?" do
    it "Check if it outputs false" do
      expect(task.complete?).to be false
    end
  end
  describe "#complete!" do
    it "Check if the task is complete" do
      task.complete!
      expect(task.complete?).to be true
    end
  end
  describe "#make_incomplete!" do
    it "Check if completed is now false" do
      task.complete!
      task.make_incomplete!
      expect(task.complete?).to be false
    end
  end
  describe "#add_task" do
    it "Check the size of the array tasks is +1 before adding a task" do
      expected_size = todo.tasks.size + 1
      todo.add_task(task)
      expect(todo.tasks.size).to be(expected_size)
    end
  end
  describe "#delete_task" do
    it "Check the size of the array tasks is -1 before deleting a task" do
      todo.add_task(task)
      expected_size = todo.tasks.size - 1
      todo.delete_task(task.id)
      expect(todo.tasks.size).to be(expected_size)
    end
  end
  describe "#find_task_by_id" do
    it "Check if is null when the task id not exists" do
      expect(todo.find_task_by_id(0)).to be(nil)
    end
  end
  describe "#sort_by_created" do
    it "The tasks in the array are in DESC order" do
      todo.add_task(task)
      todo.add_task(task2)
      ordered_tasks = todo.sort_by_created
      expect(ordered_tasks[0].created_at).to be > ordered_tasks[1].created_at
    end

    it "Sorts task in order" do
      todo.add_task(task)
      todo.add_task(task2)
      ordered_tasks = todo.sort_by_created "ASC"
      expect(ordered_tasks[0].created_at).to be < ordered_tasks[1].created_at
    end
    end
   end
end