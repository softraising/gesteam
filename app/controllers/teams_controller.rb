class TeamsController < ApplicationController
	def index
		@teams = current_admin.teams
	end

	def new
		@team = current_admin.teams.new
	end

	def show
		@team = Team.find(params[:id])
	end

	def create
		@team = current_admin.teams.create entry_params
		redirect_to teams_path
	end

	def edit
		@team = Team.find(params[:id])
		
	end

	def update
		@team = Team.find(params[:id])

		if @team.update(entry_params)
			redirect_to @team
		else
			render 'edit'
		end
	end

	private

	def entry_params
		params.require(:team).permit(:name, :description, :company)
	end
end
