require 'rails_helper'

describe 'Companies delete' do
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

  describe 'it can delete a company and all associated bikes' do
    it 'has a delete link' do
      visit "/companies/#{@c1.id}"
      click_button("Delete Company")
      expect(current_path).to eq("/companies")
      expect(page).not_to have_content("#{@c1.id}")
    end
  end
end
