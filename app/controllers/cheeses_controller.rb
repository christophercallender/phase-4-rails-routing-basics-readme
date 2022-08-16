class CheesesController < ApplicationController
  def index
    cheeses = Cheese.all.order(price: :desc).limit(2)
    render json: cheeses
  end
end
