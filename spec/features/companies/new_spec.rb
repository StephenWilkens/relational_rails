require 'rails_helper'

describe 'Companies new page' do
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

	it 'has a link to create a new company' do 
    visit '/companies'
    click_link('New Company')
    expect(current_path).to eq('/companies/new')
    fill_in 'Name', with: 'Transition'
    click_on 'Create Company'
    new_company_id = Company.last.id
    expect(current_path).to eq("/companies/#{new_company_id}")
    expect(page).to have_content('Transition')
  	end 
end
