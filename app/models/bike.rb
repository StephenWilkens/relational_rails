class Bike < ApplicationRecord
  belongs_to :company 

  def self.sort_by_name_alphabetically
    Bike.order(:name)
  end
end
