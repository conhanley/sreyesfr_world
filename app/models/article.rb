class Article < ActiveRecord::Base
	# Relationships
	belongs_to :category

	#validations
	validates_presence_of :title, :content

	#scopes
	scope :alphabetical, -> { order('title') }
	scope :active, -> { active: true }
end
