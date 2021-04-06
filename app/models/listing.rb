class Listing < ApplicationRecord
  belongs_to :User
  belongs_to :Seller
end
