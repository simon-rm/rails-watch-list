class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find params :id
  end
  def update
    @list = List.find params :id
    if @list.update(list_params)
      redirect_to @list, notice: "Movie was successfully updated.", status: :see_other
    else
      render :show, status: :unprocessable_entity
    end
  end
  def create
    @list = List.create(name: "My Watchlist")
    redirect_to @list
  end
  private
  def list_params
    params.require(:list).permit(:name)
  end
end
