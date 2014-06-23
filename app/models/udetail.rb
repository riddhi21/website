class Udetail < ActiveRecord::Base

attr_accessible :FirstName ,:Lastname, :Address, :sex, :Mobileno, :DateOfBirth, :skills


	
	string_regex = /\A[a-z]+\z/i
	validates :FirstName, :presence => true,:length => { :maximum => 50 },:format => { :with => string_regex }
			  
	validates :Lastname, :presence => true,:length => { :maximum => 50 },:format => { :with => string_regex }
			  		  
    validates :Address, :presence => true,
			  :length => { :within => 10..200 }

    validates :Mobileno, numericality: { only_integer: true },
    		  :length => {:maximum => 12}

   	validates :skills, :presence => true,:length => { :maximum => 50 }
			  


end
