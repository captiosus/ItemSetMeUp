class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  def show
    @player = Player.find(params[:id])
  end
  def new
    @player = Player.new
  end
  def edit
    @player = Player.find(params[:id])
  end
  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player
    else
      redirect_to root_path
    end
  end
  private
    def player_params
      params.require(:player).permit(:player)
    end
end
