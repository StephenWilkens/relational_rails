class Company < ApplicationRecord
  has_many :bikes

  def self.order_by_last_created
    return order(created_at: :desc)
  end
end
