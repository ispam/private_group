class City < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_and_belongs_to_many :contacts
	has_and_belongs_to_many :models
end
