require 'rails_helper'

describe 'Bikes show page' do

  it 'shows the bike with the corresponding id and its attributes' do
    c1 = Company.create!(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
    b1 = c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)

    visit "/bikes/#{b1.id}"

    expect(page).to have_content(b1.name)
    expect(page).to have_content(b1.full_suspension)
    expect(page).to have_content(b1.front_travel)
  end
end
