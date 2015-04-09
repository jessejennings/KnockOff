class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create 
    @item = current_user.items.build(params.require(:item).permit(:name))
      if @item.save
        redirect_to current_user
      else
        flash[:error] = "Look out Beavis!"
      end
  end
end