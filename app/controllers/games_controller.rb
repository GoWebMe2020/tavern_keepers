class GamesController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @game = Game.create(group_id: @group.id, date: params[:date], time: params[:time], name: params[:name], location: params[:location])
    @message = Message.create(games_id: @game.id, group_id: @group.id, user_id: current_user.id)
    @message.save!
    redirect_to group_path(@group)
  end

  def update
    game = Game.find(params[:id])
    game.update_column(:complete, true)
    players = GameRespond.where(game_id: game.id)
    players.each { |player| User.increment_counter(:rating, player.user.id) }
    redirect_to group_path(params[:group_id])
  end
end
