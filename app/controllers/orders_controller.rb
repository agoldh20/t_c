class OrdersController < ApplicationController
  def index
    
  end

  def create
    movie_id = params[:movie_id]
    theater_id = params[:theater_id]
    showtime = params[:showtime]
    showtime_object = Showtime.find_by(theater_id: theater_id, movie_id: movie_id)
    quantity = params[:quantity].to_i

    order = Order.create!(first_name: params[:first_name],
                  last_name: params[:last_name],
                  credit_card: params[:credit_card],
                  exp_date: params[:exp_date],
                  time: showtime,
                  showtime_id: showtime_object.id,
                  quantity: quantity)
    
    showtime_object.update(showtimes: order.update_seat_count(movie_id, theater_id, showtime, quantity))
    showtime_object.save

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end
