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
    @theater = Theater.find(params[:theater_id])
  end

  def edit
    @theater = Theater.find(params[:theater_id])
  
  end

  def update
    @theater = Theater.find(params[:theater_id])
    @theater.update(name: params[:name])
  end

  def destroy
    @theater = Theater.find(params[:theater_id])
    @theater.delete
  end

  def movies_index
    @movies = Theater.find(params[:theater_id]).movies
  end

  def movies_show
    @theater = Theater.find(params[:theater_id])
    @movie = @theater.movies.find(params[:movie_id])
    @showtimes = @theater.movies.find(@movie.id).showtimes.where(theater_id: params[:theater_id]).pluck(:showtimes)[0]
  end
end
