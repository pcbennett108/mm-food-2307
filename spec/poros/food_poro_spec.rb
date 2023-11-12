require 'rails_helper'

RSpec.describe 'FoodPoro' do
  it 'creates a food poro based on attributes' do
    attr = {
      "fdcId": 1946920,
      "description": "SWEET POTATO",
      "dataType": "Branded",
      "gtinUpc": "854640007086",
      "publishedDate": "2021-07-29",
      "brandOwner": "Mindful Foods, Inc.",
      "brandName": "SOOZY'S",
      "ingredients": "SOOZY'S FLOUR BLEND (BLANCHED ALMOND FLOUR, ARROWROOT FLOUR).",
      "marketCountry": "United States",
      "servingSize": 64.0,
      "score": 1155.7386
    }

    food = Food.new(attr)

    expect(food).to be_a(Food)
    expect(food.code).to eq("854640007086")
    expect(food.description).to eq("SWEET POTATO")
    expect(food.brand_owner).to eq("Mindful Foods, Inc.")
    expect(food.ingredients).to eq("SOOZY'S FLOUR BLEND (BLANCHED ALMOND FLOUR, ARROWROOT FLOUR).")
  end
end