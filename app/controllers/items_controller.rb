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

  def destroy
   @item = Item.find(params[:id])
      if @item.destroy
       flash[:notice] = "Done Deal!" 
      else
        flash[:error] = "No Way Jose"  
      end



      respond_to do |format|
        format.html {redirect_to current_user}
        format.js 
      end
  end
end