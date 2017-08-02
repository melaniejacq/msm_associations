class Character < ApplicationRecord
    
# character belongs to a MOVIE
    belongs_to(:movie, :class_name=> "Movie", :foreign_key => "movie_id")


# one character belongs to one actor. When somebody calls the method .actor, go query the column called actor id
    belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")

    # Character:
#  movie_id: must be present
    validates :movie_id, :presence => true
    
#  actor_id: must be present
    validates :actor_id, :presence => true

#  name: no rules
 
end
