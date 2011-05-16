class Salle < ActiveRecord::Base
  
  has_many :joints, :dependent => :destroy
  has_many :villes, :through => :joints
  has_many :films, :through => :joints
  
  has_many :jointbs, :dependent => :destroy
  has_many :villes, :through => :jointbs
  has_many :films, :through => :jointbs
  
  has_many :jointcs, :dependent => :destroy
  has_many :villes, :through => :jointcs
  has_many :films, :through => :jointcs
  
  has_many :salleinfos, :dependent => :destroy
  accepts_nested_attributes_for :salleinfos, :reject_if => :all_blank,  :allow_destroy => true
  
  belongs_to :ville
  belongs_to :user
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end

