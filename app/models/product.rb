class Product < ApplicationRecord
    #basic table inheritance
    has_many :bids
    ##
    before_destroy :ensure_not_referenced_by_any_line_item
    #for image upload using active_storage
    has_one_attached :image
    #checks the presence of important fields
    validates :name, :description, :image, presence: true
    #checks for the uniqueness of name of product
    validates :name, uniqueness: true
    #checks if starting_bid is a numerical value
    validates :starting_bid, numericality: { greater_than_or_equal_to: 0.01 }
end

