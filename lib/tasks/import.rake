require 'csv'

namespace :import do
	task dictionaries: :environment do
		filename=File.join(Rails.root,"lib", "seeds","t.csv")
		CSV.foreach(filename, :col_sep => '|', encoding: "bom|utf-8", :headers => true) do |row|
			Dictionary.create! row.to_hash
		end	
	end	
end
