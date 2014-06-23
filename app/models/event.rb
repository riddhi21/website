class Event < ActiveRecord::Base
	attr_accessible :date, :suburb,:venue, :time, :judges



	string_regex = /\A[a-z]+\z/i
	validates :date, :presence => true
			  
	validates :suburb, :presence => true,:length => { :maximum => 20 },:format => { :with => string_regex }
			  		  
    validates :venue, :presence => true,:length => { :within => 10..200 }

    validates :time,  :presence => true

   	validates :judges, :presence => true,:length => { :maximum => 50 }
			  


end

