class CategoriesController < ApplicationController
  def index
    @categories=Category.all
  end
  def new
    @category=Category.new
  end
  def create
    @category=Category.new(category_params)
    if @category.save
      flash[:notice] = 'category created'
      redirect_to categories_path
    else
      render 'new'
    end
  end
  def edit
    @category=Category.find(params[:id])
  end
  def update
    @category=Category.find(params[:id])
    if @category.update(category_params)
    flash[:notice] = 'category updated'
    redirect_to categories_path
    else
      render 'edit'
    end
  end
  def destroy
    @category=Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'game deleted'
    redirect_to categories_path
  end
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @games = @category.games
  end
  private
  def category_params
    params.require(:category).permit(:genre)
  end
end
