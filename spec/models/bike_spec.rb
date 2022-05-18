require 'rails_helper'

describe Bike do
  describe 'relationships' do
    it { should belong_to(:company) }
  end

  describe 'sort_by_name_alphabetically' do
    it 'can sort bikes by name alphabetically' do
      @c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
      @chameleon = @c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)
      @v10 = @c1.bikes.create!(name: 'V10', full_suspension: true, front_travel: 200)
      @tallboy = @c1.bikes.create!(name: 'Tallboy', full_suspension: true, front_travel: 130)
      expect(Bike.sort_by_name_alphabetically).to eq([@chameleon, @tallboy, @v10])
    end
  end
end
