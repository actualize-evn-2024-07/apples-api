class ApplesController < ApplicationController
  def index
    @apples = Apple.all
    render :index
  end

  def create
    @apple = Apple.new(
      variety: params[:variety],
      color: params[:color],
      mass: params[:mass],
    )
    @apple.save
    render :show
  end
end
