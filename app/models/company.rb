class Company < ApplicationRecord
  has_many :bikes, dependent: :delete_all

  def self.order_by_last_created
    order(created_at: :desc)
  end

  def sort_by_name_alphabetically
    self.bikes.order(:name)
  end
end
