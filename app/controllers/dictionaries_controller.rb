class DictionariesController < ApplicationController
	autocomplete :dictionary, :word
	def index
		@word_field=params[:Word]
		if !@word_field.blank?	
			@word_field=@word_field.gsub(/-/,' ')
			@word=Dictionary.find_by_Word(@word_field)
			@synonyms=@word.synonyms.split(",") if !@word.nil?
			@antonyms=@word.antonyms.split(",") if !@word.nil?
		end
		@word_index=[]
		upper_limit=Dictionary.count
		30.times do 
			@word_index<<rand(0..upper_limit)
		end
		@word_day=Dictionary.where(id:@word_index)
	end	

	def sitemap
		@words = Dictionary.order(:Word).page(params[:page]).per(100)
	end	
end
