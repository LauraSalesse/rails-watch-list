class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.all
    @movies = Movie.all
  end


  private
  def list_params
    params.require(:list).permit(:name, :photo)
  end


end
