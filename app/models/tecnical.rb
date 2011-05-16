class Tecnical < ActiveRecord::Base
  
  belongs_to :film
  
  has_many :tecnicalattribs, :dependent => :destroy
  accepts_nested_attributes_for :tecnicalattribs, :reject_if => :all_blank,  :allow_destroy => true
end
