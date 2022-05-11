require 'rails_helper'

describe 'Companies index' do
  it 'shows the name of each company' do
    c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
    c2 = Company.create(total_stock: 15, pro_deal: false, name: 'Trek', location: 'Wisconsin')
    c3 = Company.create(total_stock: 25, pro_deal: true, name: 'Niner', location: 'Colorado')

    visit '/companies'

    expect(page).to have_content(c1.name)
    expect(page).to have_content(c2.name)
    expect(page).to have_content(c3.name)
  end
end
