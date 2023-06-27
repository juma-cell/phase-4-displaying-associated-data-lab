class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      render json: user_with_items(user)
    end
  
    private
  
    def user_with_items(user)
      {
        id: user.id,
        username: user.username,
        city: user.city,
        items: user.items.map do |item|
          {
            id: item.id,
            name: item.name,
            description: item.description,
            price: item.price
          }
        end
      }
    end
  end
  