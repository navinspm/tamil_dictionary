require 'csv'

namespace :import do
	task dictionaries: :environment do
		filename=File.join(Rails.root,"lib", "seeds","words.csv")
		CSV.foreach(filename, :col_sep => '|', :headers => true) do |row|
			Dictionary.create! row.to_hash
		end	
	end	
end
