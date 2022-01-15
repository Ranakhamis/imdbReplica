class Movie < ApplicationRecord
	
	belongs_to :director
	has_many :rating
	belongs_to :title
	has_many :actor


	#has_attached_file :image, styles: { medium: "400x600#" }
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
#deprecated

end
