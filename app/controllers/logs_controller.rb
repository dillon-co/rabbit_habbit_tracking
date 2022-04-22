class LogsController < ApplicationController
  def show
  end

  def index
    @logs = Task.includes(:logs).find(params[:id]).logs.all
  end

  def new
    puts "\n\n\n #{params} \n\n\n"
    @task = Task.find_by(params[:task_id])
    @log = @task.logs.new
  end

  def create
    puts "\n\n\n #{params} \n\n\n"
    log = Task.find(params[:task_id]).logs.new(log_params)
    if log.save
      log_redirect_path = log.gave_reward? ? reward_path : root_path
      redirect_to log_redirect_path
    end
  end

  def reward
  end

  private

  def log_params
    params.require(:log).permit(:notes)
  end
end
