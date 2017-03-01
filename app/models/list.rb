class List < ApplicationRecord
   has_many :list_items
   has_many :exbooks, through: :list_items, source: :exbook

   def add_exbook_to_list(exbook)
     ci = list_items.build
     ci.exbook = exbook
     ci.quantity = 1
     ci.save
   end
end
