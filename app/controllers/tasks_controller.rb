class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to tasks_show_path(task.id)
    else
      render StandardError
    end
  end

  def show
    @task = Task.find(params[:id])
    @logs = @task.logs
    @new_log = Log.new
  end

  def index
    @tasks = Task.includes(:logs).all
  end

  private

  def task_params
    params.require(:task).permit(:name, :details, :required_time_in_minutes, :time_of_day, :schedule)
  end
end
