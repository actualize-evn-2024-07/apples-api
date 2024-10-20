class ApplesController < ApplicationController
  def index
    @apples = Apple.all
    render :index
  end
end
