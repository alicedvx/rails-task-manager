class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # redirect_to task_path(@path)
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    set_task
  end

  def update
    set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    set_task
    @task.destroy
    redirect_to tasks_path
  end
end

private

def task_params
  # => Whitelisting
  params.require(:task).permit(:title, :details, :completed)
end

def set_task
  @task = Task.find(params[:id])
end
