class ViewsController < ApplicationController
  def top
    @performances = Performance.all
  end
end
