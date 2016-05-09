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
	end		
end
