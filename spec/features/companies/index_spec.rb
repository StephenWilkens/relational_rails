require 'rails_helper'

describe 'Companies index page' do
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

  it 'shows the name of each company in order of creation with creation date next to the company name' do
    visit '/companies'
    expect(page).to have_content(@c1.name)
    expect(page).to have_content(@c1.created_at)
    expect(page).to have_content(@c2.name)
    expect(page).to have_content(@c2.created_at)
    expect(page).to have_content(@c3.name)
    expect(page).to have_content(@c3.created_at)
  end

  it 'has a link to the bike index page' do
    visit '/companies'
    click_link('Bikes')
    expect(current_path).to eq('/bikes')
  end

  it 'has a link to the companies index page' do
    visit '/companies'
    click_link('Companies')
    expect(current_path).to eq('/companies')
  end

  it 'has an edit link next to each company' do
    visit '/companies'
    within "#company-#{@c1.id}" do
      click_link('Update this Company')
    end
    expect(current_path).to eq("/companies/#{@c1.id}/edit")
  end
end
