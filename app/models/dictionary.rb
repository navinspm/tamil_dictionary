class Dictionary < ActiveRecord::Base
	self.table_name = "dictionaries"
	def self.primary_key 
    	'id'
  	end
end
