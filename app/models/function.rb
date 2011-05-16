class Function < ActiveRecord::Base
  belongs_to :film
  
  has_many :people, :dependent => :destroy
  accepts_nested_attributes_for :people, :reject_if => :all_blank,  :allow_destroy => true
   
   
end
