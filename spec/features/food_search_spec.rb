require 'rails_helper'

RSpec.describe 'Food Search', type: :feature do
  it 'finds a food item and lists ten items containing that food' do
    visit root_path
    fill_in :q, with: 'sweet potato'
    click_button 'Search'

    expect(current_path).to eq(foods_path)

    expect(page).to have_content('We found 56663 foods containing sweet potato')

    expect(page).to have_css('.food', count: 10)

    within(first('.food')) do
      expect(page).to have_css('.upc')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand')
      expect(page).to have_css('.ingredients')
    end
  end
end