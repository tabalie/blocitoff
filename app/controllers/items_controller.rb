class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def create
    @item = Item.new(params[:item])
    @item.user = current_user

    if @item.save
      flash[:notice] = "New item saved!"
      redirect_to(user_items_path(current_user))
    else
      flash[:error] = "Error saving item. Please try again."
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @items = Item.find(params[:id])
  end

end
