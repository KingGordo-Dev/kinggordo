class Film < ActiveRecord::Base
  
  has_many :joints, :dependent => :destroy
  has_many :villes, :through => :joints
  has_many :salles, :through => :joints
  accepts_nested_attributes_for :joints, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointbs, :dependent => :destroy
  has_many :villes, :through => :jointbs
  has_many :salles, :through => :jointbs
  accepts_nested_attributes_for :jointbs, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :jointcs, :dependent => :destroy
  has_many :villes, :through => :jointcs
  has_many :salles, :through => :jointcs
  accepts_nested_attributes_for :jointcs, :reject_if => proc { |a| a['salle_id'].blank? }, :allow_destroy => true
  
  has_many :functions, :dependent => :destroy
  accepts_nested_attributes_for :functions, :reject_if => :all_blank,  :allow_destroy => true
  
  has_many :tecnicals, :dependent => :destroy
  accepts_nested_attributes_for :tecnicals, :reject_if => :all_blank,  :allow_destroy => true
  
  belongs_to :moviselect
  
  has_many :film_users
  has_many :users, :through => :film_users
  
 
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

  
  validates_uniqueness_of :name
  
  
end
