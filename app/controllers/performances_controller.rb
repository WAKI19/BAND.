class PerformancesController < ApplicationController
  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    @performance.user_id = @current_user.id
    if @performance.save
      redirect_to root_path
    end
  end

  private

  def performance_params
    params.require(:performance).permit(:user_id, :title, :text, :video)
  end
end
