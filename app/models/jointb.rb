class Jointb < ActiveRecord::Base
  
  belongs_to :film
  belongs_to :salle
  belongs_to :ville
  
  has_many :onstageattribs, :dependent => :destroy
  accepts_nested_attributes_for :onstageattribs, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :shortmovattribs, :dependent => :destroy
  accepts_nested_attributes_for :shortmovattribs, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :featuremovattribs, :dependent => :destroy
  accepts_nested_attributes_for :featuremovattribs, :reject_if => :all_blank,  :allow_destroy => true
end