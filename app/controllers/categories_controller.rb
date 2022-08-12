class CategoriesController < ApplicationController

  # List of categories/genres + home page
  def index
    @categories = Category.all
  end

  # New category/genre
  def new
    @category = Category.new
  end


  # Create a single category/genre
  def create
    @category = Category.new(params.require(:category).permit(:title))

    if @category.save
      redirect_to root_path
    end
  end

  # Show a single category/genre
  def show
    @category = Category.find(params[:id])
  end


end
