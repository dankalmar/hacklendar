class DiaryEntriesController < ApplicationController

	def index
		@diary_entries = DiaryEntry.all

		@diary_entries_mood = DiaryEntry.where ({mood:'happy'})
	end

	def new
		@diary_entry = DiaryEntry.new
	end

	def create
		@diary_entry = DiaryEntry.new params["diary_entry"]
		if @diary_entry.title == ''
			render :new
		else
			@diary_entry.save
			redirect_to diary_entries_path
		end
	end


end
