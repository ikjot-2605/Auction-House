class Bid < ApplicationRecord
    belongs_to :product, optional: true
end
