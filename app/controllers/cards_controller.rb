class CardsController < ApplicationController
	before_action :find_card, only: [:show, :edit, :update, :destroy]
	before_action :find_deck, only: [:create, :edit, :update, :destroy, :index, :show]

	def find_card
	  @card = Card.find(params[:id])
	end

	def find_deck
	  @deck = Deck.find(params[:deck_id])
	end

	def index
	  @cards = Card.all
	end

	def show
	  @cards = Card.where(deck_id: params[:id])
	end

	def edit
	end

	def update
      respond_to do |format|
        if @card.update(card_params)
          format.html { redirect_to @card, notice: 'Card was successfully updated.' }
          format.json { render :show, status: :ok, location: @card }
        else
          format.html { render :edit }
          format.json { render json: @card.errors, status: :unprocessable_entity }
        end
      end
    end

	def destroy
	end

	def create
	    @card = @deck.cards.create(card_params)
	    respond_to do |format|
	      if @card.save
	        format.html { redirect_to deck_card_path(id: @card.id), notice: 'Card was successfully created.' }
	        format.json { render :show, status: :created, location: @card }
	      else
	        format.html { render :new }
	        format.json { render json: @card.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	def new
		@card = Card.new
	end

	private
	 def card_params
      params.require(:card).permit(:prompt, :answer)
    end
end
