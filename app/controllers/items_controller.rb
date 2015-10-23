class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def create
    @item = Item.new(params[:item])
    @item.user = current_user

    if @item.save
      flash[:notice] = "New item saved!"
      redirect_to current_user
    else
      flash[:error] = "Error saving item. Please try again."
      render :new
    end
  end

end
