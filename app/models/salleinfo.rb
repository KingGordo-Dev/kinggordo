class Salleinfo < ActiveRecord::Base
  
  belongs_to :salle
  
  has_many :salleinfoattribs, :dependent => :destroy
  accepts_nested_attributes_for :salleinfoattribs, :reject_if => :all_blank,  :allow_destroy => true
end
