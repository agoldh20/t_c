class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def new
      
  end

  def create
    Theater.create(name: params[:name])
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def edit
    @theater = Theater.find(params[:id])
  
  end

  def update
    @theater = Theater.find(params[:id])
    @theater.update(name: params[:name])
  end

  def destroy
    @theater = Theater.find(params[:id])
    @theater.delete
  end
end
