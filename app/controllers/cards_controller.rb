class CardsController < ApplicationController

  def index
    @cards = Card.all
    render status: 200, json: @cards, each_serializer: CardSerializer
  end
end
