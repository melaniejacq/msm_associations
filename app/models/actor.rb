class Actor < ApplicationRecord
    
#  - one actor has many characters
    has_many(:characters, :class_name =>"Character", :foreign_key => "actor_id")
#  - one actor has many movies through characters
    has_many(:movies, :through => :characters)    
    
#  - name: must be present; must be unique in combination with dob
    validates :name, :presence => true, uniqueness: { scope: :dob }
#  - dob: no rules
#  - bio: no rules
#  - image_url: no rules
    
end
