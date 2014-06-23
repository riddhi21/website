class Feedback < ActiveRecord::Base
	attr_accessible :username, :feedback



string_regex = /\A[a-z]+\z/i
	
			  
	validates :username, :presence => true,:length => { :maximum => 20 }
			  		  
    validates :feedback, :presence => true,:length => { :within => 10..200 }

   end