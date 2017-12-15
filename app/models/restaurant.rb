class Restaurant < ActiveRecord::Base
    has_many :contacts
    has_many :mappings
    has_many :listedins, through: :mappings
end
