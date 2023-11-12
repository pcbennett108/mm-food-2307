require 'rails_helper'

RSpec.describe 'FoodService' do
  it 'searches out API for a food item' do
   search_term = 'sweet potato' 

   results = FdcService.new.search(search_term)

   expect(results).to have_key(:totalHits)
   expect(results).to have_key(:currentPage)
   expect(results[:currentPage]).to eq 1

   expect(results).to have_key(:foods)
   expect(results[:foods]).to be_an(Array)

   foods = results[:foods]
   expect(foods.length).to eq 10

   first_food = foods[0]
   expect(first_food).to have_key(:gtinUpc)
   expect(first_food[:gtinUpc]).to be_a(String)
   expect(first_food[:gtinUpc]).to eq("20042431")

   expect(first_food).to have_key(:description)
   expect(first_food).to have_key(:brandOwner)
   expect(first_food).to have_key(:ingredients)
   
  end
end