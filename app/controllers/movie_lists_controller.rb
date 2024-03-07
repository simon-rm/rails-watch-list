class MovieListsController < ApplicationController
  def index
    @movie_lists = MovieList.all
  end
  def show
    @movie_list = MovieList.find params :id
  end
  def update
    @movie_list = MovieList.find params :id
    if @movie_list.update(movie_list_params)
      redirect_to @movie_list, notice: "Movie was successfully updated.", status: :see_other
    else
      render :show, status: :unprocessable_entity
    end
  end
  def create
    @movie_list = MovieList.create(name: "My Watchlist")
    redirect_to @movie_list
  end
  private
  def movie_list_params
    params.require(:movie_list).permit(:name)
  end
end
