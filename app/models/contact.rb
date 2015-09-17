class Contact < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_and_belongs_to_many :models
	has_and_belongs_to_many :citys
end
