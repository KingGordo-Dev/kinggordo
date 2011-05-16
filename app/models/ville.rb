class Ville < ActiveRecord::Base
  has_many :joints, :dependent => :destroy
  has_many :films, :through => :joints
  has_many :salles, :through => :joints
  
  has_many :jointbs, :dependent => :destroy
  has_many :films, :through => :jointbs
  has_many :salles, :through => :jointbs
  
  has_many :jointcs, :dependent => :destroy
  has_many :films, :through => :jointcs
  has_many :salles, :through => :jointcs
  
  belongs_to :film
  
  has_many :salles
  
  
end
