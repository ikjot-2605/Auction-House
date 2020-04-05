class Product < ApplicationRecord
    has_many :bids
    
    before_destroy :ensure_not_referenced_by_any_line_item
    has_one_attached :image
    validates :name, :description, :image, presence: true
    validates :name, uniqueness: true
    
    validates :starting_bid, numericality: { greater_than_or_equal_to: 0.01 }

    
   
    
    
    end

