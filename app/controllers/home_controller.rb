class HomeController < ApplicationController
	def index
		@word_field=params[:Word]
		if !@word_field.blank?	
			@word=Dictionary.find_by_Word(params[:Word])
			@synonyms=@word.synonyms.split(",") if !@word.nil?
			@antonyms=@word.antonyms.split(",") if !@word.nil?
		end	
	end		
end
