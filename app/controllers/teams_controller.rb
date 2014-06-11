class TeamsController < ApplicationController
	def index
		@teams = current_admin.teams
	end

	def new
		@team = current_admin.teams.new
	end

	def create
		@team = current_admin.teams.create entry_params
		redirect_to teams_path
	end

	private

	def entry_params
		params.require(:team).permit(:name, :description)
	end
end
