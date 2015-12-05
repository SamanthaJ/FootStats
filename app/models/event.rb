class Event < ActiveRecord::Base
  belongs_to :player
  has_and_belongs_to_many :teams
end
