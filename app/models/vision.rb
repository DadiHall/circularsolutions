class Vision < ActiveRecord::Base
	attr_accessible :title, :body
	validates :title, :body
end
