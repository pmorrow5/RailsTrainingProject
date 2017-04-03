class Card < ApplicationRecord
	belongs_to :user
	belongs_to :deck
	validates_presence_of :prompt
	validates_presence_of :answer
end
