class TagsController < ApplicationController
	include TagsHelper

	def show
	  @tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.delete

		flash.notice = "Tag '#{@tag.name}' Deleted!"

		redirect_to tags_path
	end

	def new 
		@tag = Tag.new
	end
end
