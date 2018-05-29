class CalculateController < ApplicationController
  def index
    existing_cards = Array.new
    Card.find_each do |card|
      if(card.deleted_at == nil)
        existing_cards.push({:id => card.id, :card_name => card.card_name})
      end
    end
    @page_title = 'List of Cards'
    @cards = existing_cards
  end

  def viewCard
    card_id = params[:card_id]
    card = Card.new.getCard(card_id)

    @card = card
  end

  def cardCreation
    @fields = Card.column_names
  end

  def newCard
    card_name = params[:card_name]
    hit_points = params[:hit_points]
    attack_points = params[:attack_points]

    card_id = Card.create(card_name: card_name, hit_points: hit_points, attack_points: attack_points).id

    uploaded_io = params[:card_art]
    extension = File.extname(uploaded_io.original_filename)

    File.open(Rails.root.join('public', 'uploads', "#{card_id}#{extension}"), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    Card.where(:id => card_id).update_all(card_art: "#{card_id}#{extension}")

    redirect_to '/'
  end

  def deleteCard
    card_id = params[:card_id]

    Card.where(:id => card_id).update_all(deleted_at: Time.now)
    redirect_to '/'
  end
end
