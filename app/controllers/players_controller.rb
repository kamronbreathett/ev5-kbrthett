# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @players = @team.players
    render :index
  end

  def show
    @team = Team.find(params[:team_id])
    @player = Player.search.find(params[:id])
    render :show
  end

  def new
    @team = Team.find(params[:team_id])
    @player = Player.new
    render :new
  end

  def edit
    @team = Team.find(params[:team_id])
    @player = Player.search.find(params[:id])
    render :edit
  end

  def create
    @team = Team.new(params.require(:player).permit(:first_name, :last_name, :position))
    if @player.save
      flash[:success] = 'Player was successfully created.'
      redirect_to players_url
    else
      flash.now[:error] = 'Error! Unable to create player.'
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @team = Team.find(params[:team_id])
    @player = Player.search.find(params[:id])
    if @player.update(params.require(:team).permit(:first_name, :last_name, :position))
      flash[:success] = 'Player was successfully updated.'
      redirect_to player_url(@team)
    else
      flash.now[:error] = 'Error! Unable to update team.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:success] = 'Player was successfully destroyed.'
    redirect_to teams_url
  end
end
