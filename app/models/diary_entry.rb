class DiaryEntry < ActiveRecord::Base
	attr_accessible :title, :description, :mood

	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
	validates :mood, inclusion: {in: %w(happy sad)}
	validate :check_mood

	def check_mood
		if Time.now.monday? && mood != 'happy' || Time.now.thursday? && mood != 'happy'
		errors[:mood] << "Yo, it's not happy and it's Monday (or maybe Thursday). Check yoself"
		end
	end



	def happy?
		mood == "happy"
	end

	def self.by_name(name)
		where(name: name)
	end
end