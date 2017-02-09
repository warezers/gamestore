class GamesController < ApplicationController

  def index
    @games=Game.all
    @categories=Category.all
    @render_carousel = true

  end

  def new
    @game=Game.new
  end

  def create
    @game=Game.new(game_params)
    if @game.save
    flash[:notice] = 'game created'
    redirect_to games_path
    else
    render 'new'
  end
  end

  def edit
    @game=Game.find(params[:id])
  end

  def update
    @game=Game.find(params[:id])
    if @game.update(game_params)
    flash[:notice] = 'game updated'
    redirect_to games_path
    else
      render 'edit'
    end
  end

  def destroy
    @game=Game.find(params[:id])
    @game.destroy
    flash[:notice] = 'game deleted'
    redirect_to games_path
  end

  def show
    @game=Game.find(params[:id])
    @categories=Category.all

  end
  private
  def game_params
    params.require(:game).permit(:name, :year, :description, :price, :category_id, :creator_id,:coverpath)
  end
end
