require 'rails_helper'

describe 'Company bikes index page' do
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

  it 'can see each bike that is associated with the given company id and show those childrens attributes' do
    visit "companies/#{@c1.id}/bikes"

    expect(page).to have_content(@chameleon.name)
    expect(page).to have_content(@chameleon.full_suspension)
    expect(page).to have_content(@chameleon.front_travel)
    expect(page).to have_content(@v10.name)
    expect(page).to have_content(@v10.full_suspension)
    expect(page).to have_content(@v10.front_travel)
    expect(page).to have_content(@tallboy.name)
    expect(page).to have_content(@tallboy.full_suspension)
    expect(page).to have_content(@tallboy.front_travel)
  end

  it 'has a link to the bike index page' do
    visit "companies/#{@c1.id}/bikes"
    click_link('Bikes')
    expect(current_path).to eq('/bikes')
  end

   it 'has a link to the companies index page' do
    visit "companies/#{@c1.id}/bikes"
    click_link('Companies')
    expect(current_path).to eq('/companies')
  end

  it 'lists bikes in alphabetical order' do
    visit "companies/#{@c1.id}/bikes"
    expect(@chameleon.name).to appear_before(@tallboy.name)
    expect(@chameleon.name).to appear_before(@v10.name)
    expect(@tallboy.name).to appear_before(@v10.name)
  end

end
