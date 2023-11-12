require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it 'should call the facade and retrieve search results' do
    search_term = 'sweet potato'

    results = FoodsFacade.food_data(search_term)
    expect(results).to be_an(Array)

    next_food = results.first
    expect(next_food).to be_a(Food)
    expect(next_food.code).to eq('20042431')
    expect(next_food.description).to eq('SWEET POTATO')
    expect(next_food.brand_owner).to eq('FRESH & EASY')
    expect(next_food.ingredients).to be_a(String)
  end
end