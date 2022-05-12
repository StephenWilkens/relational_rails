require 'rails_helper'

describe 'Companies show page' do
  it 'shows the company with the corresponding id and its attributes' do
    c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')

    visit "/companies/#{c1.id}"

    expect(page).to have_content(c1.name)
    expect(page).to have_content(c1.location)
    expect(page).to have_content(c1.total_stock)
    expect(page).to have_content(c1.pro_deal)
  end
end
