class MembersController < ApplicationController

	def index
		@team = Team.find(params[:team_id])
		@members = @team.members
	end
	def new
		team = Team.find(params[:team_id])
		@member = team.members.new
	end

	def create
		@team = Team.find(params[:team_id])
		@team.members.create entry_params
		redirect_to teams_path
	end

	def entry_params
		params.require(:member).permit(:name, :email, :incidences, :team_id)
	end


end
