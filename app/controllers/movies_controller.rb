class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    if @params[:theater]
      @movies = Movie.where()
    end
  end

  def create
    @movie = Movie.new(
                       title: params[:title],
                       rating: params[:rating],
                       runtime: params[:runtime],
                       image_url: params[:image_url])
    @movie.save
    new_showtime = Showtime.create(movie_id: @movie.id)
    redirect_to "/showtimes/#{new_showtime.id}/edit"
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end
