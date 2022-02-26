class CardsController < ApplicationController

  def index
    @cards = Card.where(user_id: current_v1_user.id)
    render status: 200, json: @cards, each_serializer: CardSerializer
  end

  def create
    @card = Card.create!(card_params.merge(user_id: current_v1_user.id))

    render status: 200, json:
    @card, serializer: CardSerializer
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy!

    render status: 200, json: @card, serializer: CardSerializer
  end

  private

  def card_params
    params.require(:card).permit(:card_title, :list_id)
  end
end
