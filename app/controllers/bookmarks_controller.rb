class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new bookmark_params :name
    @bookmark.movie = Movie.find bookmark:movie_id
    @bookmark.movie_list = params :movie_list_id
    @bookmark.movie = bookm
    if @bookmark.save
      redirect_to "movie_lists/show"
    end
  end

  def bookmark_params
    params.require(:bookmark).permit(:name, :movie_id)
  end
end
