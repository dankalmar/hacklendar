class CreateDiaryEntries < ActiveRecord::Migration
  def change
  	create_table :diary_entries do |de|
		de.string :title
		de.text :description
		de.string :mood
		de.timestamps
  	end

  end
end
