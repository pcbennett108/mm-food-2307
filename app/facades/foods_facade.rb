class FoodsFacade
  # attr_reader :food_query

  # def initialize(food_query)
  #   @food_query = food_query
  # end

  def self.food_data(food_query)
    responce = FdcService.new.search(food_query)
    responce[:foods].map do |food_item|
      Food.new(food_item)
    end
  end
  
  def self.total_hits(food_query)
    responce = FdcService.new.search(food_query)
    responce[:totalHits]
  end
end