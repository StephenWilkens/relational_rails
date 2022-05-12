require 'rails_helper'

describe 'Bikes index page' do
  it 'shows the name of each bike' do
    c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
    b1 = c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)

    visit "/bikes"

    expect(page).to have_content(b1.name)
  end
end
