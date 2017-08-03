class Director < ApplicationRecord

# DIRECTOR HAS MANY MOVIES
# creating a class name called movie that has a foreign key
    has_many(:movies, :class_name =>"Movie", :foreign_key => "director_id")

#  - name: must be present; must be unique in combination with dob
    validates :name, :presence => true, uniqueness: { scope: :dob }
    
#  - dob: no rules
#  - bio: no rules
#  - image_url: no rules
# end
end
