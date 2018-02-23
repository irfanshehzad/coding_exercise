class Snippet < ActiveRecord::Base
  validates_presence_of :value
  validates_length_of :value, :maximum => 50
end
