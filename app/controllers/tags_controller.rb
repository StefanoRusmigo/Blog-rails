class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag #{@tag.name} has been removed"
		redirect_to '/tags'
	end
	
	
end
