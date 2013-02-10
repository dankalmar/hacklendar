class DiaryEntry < ActiveRecord::Base
	attr_accessible :title, :description, :mood

	def happy?
		mood == "happy"
	end

	def self.by_name(name)
		where(name: name)
	end
end