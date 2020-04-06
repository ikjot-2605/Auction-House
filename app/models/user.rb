class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #this is default devise login 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #basic table inheritance
  has_many :bids
         
end
