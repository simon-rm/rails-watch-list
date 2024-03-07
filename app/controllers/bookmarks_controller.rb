class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new bookmark_params :name
    @bookmark.movie = Movie.find bookmark_params :movie_id
    @bookmark.list = params :list_id
    @bookmark.movie = bookm
    if @bookmark.save
      redirect_to "lists/show"
    end
  end

  def bookmark_params
    params.require(:bookmark).permit(:name, :movie_id)
  end
end
