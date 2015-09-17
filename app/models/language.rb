class Language < ActiveRecord::Base
	has_and_belongs_to_many :models
	has_and_belongs_to_many :contacts
	has_and_belongs_to_many :citys
end
