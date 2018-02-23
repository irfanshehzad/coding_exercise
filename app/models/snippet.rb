class Snippet < ActiveRecord::Base
  scope :public_snippets, -> {where(:is_private => false)}
  validates_presence_of :value
  validates_length_of :value, :maximum => 50
  def is_private?
    is_private
  end
end
