class ItemsController < ApplicationController
    def index
      items = Item.all
      render json: items_with_users(items)
    end
  
    private
  
    def items_with_users(items)
      items.map do |item|
        {
          id: item.id,
          name: item.name,
          description: item.description,
          price: item.price,
          user: {
            id: item.user.id,
            username: item.user.username,
            city: item.user.city
          }
        }
      end
    end
  end
  