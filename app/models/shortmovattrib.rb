class Shortmovattrib < ActiveRecord::Base
  belongs_to :joint
  belongs_to :jointb
  belongs_to :jointc
  belongs_to :film
end
