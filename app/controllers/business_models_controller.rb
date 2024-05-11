class BusinessModelsController < ApplicationController
  def parse_wikipedia
    system('rake parse:wikipedia_category')
    @message = 'Parsing and saving completed!'
  end
end
