class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]

    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    response_unparse = URI.open(url).read
    @response = JSON.parse(response_unparse)

  end
end
