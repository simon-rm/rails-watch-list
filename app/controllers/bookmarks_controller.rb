class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new comment: bookmark_params[:comment]
    @bookmark.list = List.find params[:list_id]
    @bookmark.movie = Movie.find bookmark_params[:movie_id]
    if @bookmark.save
      redirect_to "/lists/show"
    end
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
