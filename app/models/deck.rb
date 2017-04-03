class Deck < ApplicationRecord
	belongs_to :user
	has_many :cards
	validates_presence_of :title
	validates_presence_of :description
end
