class Vision < ActiveRecord::Base
	
	validates :title, :body => true
end
