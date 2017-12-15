class Listedin < ActiveRecord::Base
    has_many :mappings
  has_many :restaurants, through: :mappings
end
