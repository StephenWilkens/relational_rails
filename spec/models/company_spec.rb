require 'rails_helper'

describe Company do
  describe 'relationships' do
    it { should have_many(:bikes) }
  end

  describe 'instance methods' do
    before :each do 
      @c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
      @c2 = Company.create(total_stock: 15, pro_deal: false, name: 'Trek', location: 'Wisconsin')
      @c3 = Company.create(total_stock: 25, pro_deal: true, name: 'Niner', location: 'Colorado')

      @chameleon = @c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)
      @v10 = @c1.bikes.create!(name: 'V10', full_suspension: true, front_travel: 200)
      @tallboy = @c1.bikes.create!(name: 'Tallboy', full_suspension: true, front_travel: 130)

      @slash = @c2.bikes.create!(name: 'Slash', full_suspension: true, front_travel: 150)
      @stache = @c2.bikes.create!(name: 'Stache', full_suspension: false, front_travel: 130)
      @fuel = @c2.bikes.create!(name: 'Fuel', full_suspension: true, front_travel: 130)

      @wfo = @c3.bikes.create!(name: 'WFO', full_suspension: true, front_travel: 170)
      @sir = @c3.bikes.create!(name: 'SIR', full_suspension: false, front_travel: 120)
      @rip = @c3.bikes.create!(name: 'RIP', full_suspension: true, front_travel: 150)
    end

    describe 'order the companies by creation date' do
      it 'can order the companies by creation date' do
        expect(Company.order_by_last_created).to eq([@c3, @c2, @c1])
      end
    end
  end
end
