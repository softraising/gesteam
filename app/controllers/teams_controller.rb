class TeamsController < ApplicationController
	before_action :set_team, only: [:show, :edit, :update, :destroy]

	def index
		@teams = current_admin.teams
	end

	def new
		@team = current_admin.teams.new
	end

	def show
	end

	def create
		@team = current_admin.teams.create entry_params
		redirect_to teams_path
	end

	def edit
	end

	def update
		if @team.update(entry_params)
			redirect_to @team
		else
			render 'edit'
		end
	end

	def destroy
		@team.destroy
		respond_to do |format|
      		format.html { redirect_to teams_path }
      		format.json { head :no_content }
    	end
		# redirect_to teams_path
	end

	private

	def set_team
      @team = Team.find(params[:id])
    end

	def entry_params
		params.require(:team).permit(:name, :description, :company)
	end
end
