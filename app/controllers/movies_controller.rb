class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    if @params[:theater]
      @movies = Theater.find(params[:theater]).movies
    end
  end

  def create
    @movie = Movie.new(
                       title: params[:title],
                       rating: params[:rating],
                       runtime: params[:runtime],
                       image_url: params[:image_url])
    @movie.save
    new_showtime = Showtime.new(movie_id: @movie.id)
    new_showtime.save
    redirect_to "/showtimes/#{new_showtime.id}/edit"
  end

  def show
    @movie = Movie.find(params[:id])
    @theaters = @movie.theaters
  end

  def update
    
  end

  def destroy
    
  end
end
