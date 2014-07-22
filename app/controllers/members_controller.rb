class MembersController < ApplicationController
	before_action :set_member, only: [:show, :edit, :update, :destroy]

	def index
		@team = Team.find(params[:team_id])
		@members = @team.members
	end

	def show
		#@member = Member.find(params[:id])   # esta manera de encontrar el member lo hace el :set_member
	end
	
	def new
		team = Team.find(params[:team_id])
		@member = team.members.new
	end

	def create
		@team = Team.find(params[:team_id])
		@team.members.create entry_params
		redirect_to team_members_path(:team_id => @team.id)
	end

	def edit
	end

	def update
		@team = Team.find(params[:team_id])
		if @member.update(entry_params)
			redirect_to team_member_path(@team, @member)
		else
			render 'edit'
		end
	end

	def destroy
		#@member = Member.find(params[:id])
		@member.destroy
		respond_to do |format|
			format.html { redirect_to team_members_path }
			format.json { head :no_content }
		end
	end

	private

	def set_member
		@member = Member.find(params[:id])
	end

	def entry_params
		params.require(:member).permit(:name, :email, :incidences, :team_id)
	end


end
