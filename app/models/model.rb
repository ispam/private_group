class Model < ActiveRecord::Base

	has_attached_file :image, styles: { medium: "450x350>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 	
	has_and_belongs_to_many :languages
	has_and_belongs_to_many :contacts
	has_and_belongs_to_many :citys

	accepts_nested_attributes_for :languages, :contacts, :citys
end
