require 'rails_helper'

describe 'Bikes show page' do
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

  it 'shows the bike with the corresponding id and its attributes' do
  
    visit "/bikes/#{@chameleon.id}"

    expect(page).to have_content(@chameleon.name)
    expect(page).to have_content(@chameleon.full_suspension)
    expect(page).to have_content(@chameleon.front_travel)
  end

  it 'has a link to the bike index page' do
    visit "/bikes/#{@chameleon.id}"
    click_link('Bikes')
    expect(current_path).to eq('/bikes')
  end

  it 'has a link to the companies index page' do
    visit "/bikes/#{@chameleon.id}"
    click_link('Companies')
    expect(current_path).to eq('/companies')
  end

end
