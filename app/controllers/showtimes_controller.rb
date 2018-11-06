class ShowtimesController < ApplicationController
  def index
    
  end

  def new
    
  end

  def create

  end

  def show
    
  end

  def edit
    showtimes_hash = {}
    params[:input_times].split(",").each do |time|
      showtimes_hash["#{time.gsub(" ", "")}"] = params[:seat_capacity]
    end
  end

  def destroy
    
  end
end
