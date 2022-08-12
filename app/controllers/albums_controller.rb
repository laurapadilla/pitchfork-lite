class AlbumsController < ApplicationController
  def show
    # get the category from the category_id, this is due to the config/routes.rb
    # as we have:
    # resources :categories do
    #   resources :albums
    # end
    @category = Category.find(params[:category_id])
    @album = Album.find(params[:id])
  end

  def new
    # get the category id
    @category = Category.find(params[:category_id])
    @album = @category.albums.new
  end
  
  def create
    # get the category id
    @category = Category.find(params[:category_id])
    
    # make a new album on this category
    @album = @category.albums.new(album_params)
    
    if @album.save
      redirect_to category_path(@category)
    else
      render "new"
    end
  end

  def album_params
    params.require(:album).permit(:title, :artist, :release, :body)
  end

end
