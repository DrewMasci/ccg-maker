class Card < ApplicationRecord
  def getCard(card_id)
    card = Card.find(card_id).as_json

    cost = ((card['hit_points'] + card['attack_points']) / 2) + 1

    card['cost'] = cost

    return card
  end
end
