class PlayersController < ApplicationController
  require 'lol'
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
      client = Lol::Client.new "e4d67b9c-85a6-444c-b285-a36e55a34bdd", {region: "na"}
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
