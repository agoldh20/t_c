class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(
                       title: params[:title],
                       rating: params[:rating],
                       runtime: params[:runtime],
                       image_url: params[:image_url])
    @movie.save
    showtimes_arr = []
    params[:input_times].split(",").each do |time|
      showtimes_arr << {"#{time.gsub(" ", "")}" => 20}
    end
    @movie.assign_attributes(showtimes: showtimes_arr)
    @movie.save

    redirect_to "/"
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end
