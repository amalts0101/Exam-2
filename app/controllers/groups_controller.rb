class GroupsController < ApplicationController
	def index
	@groups = Group.all
	end

	def show
    @group = Group.joins("INNER JOIN students ON students.id = groups.student_id")
    end

	def new
		@group = Group.new
	end

	def create
 	@group = Group.new(group_params)
  	@group.save
  	redirect_to @group	
  	end

	private

	def group_params
    	params.require(:group).permit(:name, :student_id)
    end
end
