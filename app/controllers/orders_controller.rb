class OrdersController < ApplicationController
  def index
    
  end

  def create
    movie_id = params[:movie_id]
    showtime = params[:showtime]
    quantity = params[:quantity].to_i

    order = Order.create!(first_name: params[:first_name],
                  last_name: params[:last_name],
                  credit_card: params[:credit_card],
                  exp_date: params[:exp_date],
                  showtime: showtime,
                  movie_id: movie_id,
                  quantity: quantity)
    
    update_seat_count(movie_id, showtime)

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
