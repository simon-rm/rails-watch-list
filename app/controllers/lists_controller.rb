class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end
  def show
    @list = List.find params[:id]
    @bookmark = Bookmark.new
    @movies = Movie.all - @list.movies
  end
  def update
    @list = List.find params[:id]
    if @list.update(list_params)
      redirect_to @list, notice: "Movie was successfully updated.", status: :see_other
    else
      render :show, status: :unprocessable_entity
    end
  end
  def create
    @list = List.new list_params
    if @list.save
        redirect_to @list
    end
  end
  private
  def list_params
    params.require(:list).permit(:name)
  end
end
