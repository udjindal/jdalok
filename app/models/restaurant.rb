class Restaurant < ActiveRecord::Base
    has_many :contacts
    has_many :mappings
    has_many :listedins, through: :mappings


    def contacts_list
        self.contacts.pluck(:number)
    end

    def tags
        self.listedins.pluck(:listedin_category)
    end
end
