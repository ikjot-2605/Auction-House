class Bid < ApplicationRecord
    belongs_to :product, optional: true
    #basic table inheritance
end
