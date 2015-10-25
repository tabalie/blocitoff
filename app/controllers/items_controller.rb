class ItemsController < ApplicationController

  def index
    @items = current_user.items
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "New task saved!"
      redirect_to current_user
    else
      flash[:error] = "Error saving task. Please try again."
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
