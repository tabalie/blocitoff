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

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Completed."
    else
      flash[:error] = "Error, please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  private

  def item_params
    params.require(:item).permit(:name)
end

end
