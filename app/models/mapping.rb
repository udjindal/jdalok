class Mapping < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :listedin
end
