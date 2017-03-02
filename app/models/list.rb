class List < ApplicationRecord
   has_many :list_items
   has_many :exbooks, through: :list_items, source: :exbook

   def add_exbook_to_list(exbook)
     li = list_items.build
     li.exbook = exbook
     li.quantity = 1
     li.save
   end

   def clean!
     list_items.destroy_all
   end
end
