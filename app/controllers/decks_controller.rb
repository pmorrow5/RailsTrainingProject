class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy, :present]
  
  # GET /decks
  # GET /decks.json
  def index
    @decks = Deck.all.order("id DESC")
    @deck = Deck.new
  end

  # GET /decks/1
  # GET /decks/1.json
  def show
    @cards = @deck.cards
    @card = Card.new
  end

  # GET /decks/new
  def new
    @deck = Deck.new
  end

# POST /decks
  # POST /decks.json
  def create
    @deck = Deck.new(deck_params)

    respond_to do |format|
      if @deck.save
        format.html { redirect_to decks_path}
        format.json { render :show, status: :created, location: @deck }
      else
        format.html { render :new }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /decks/1/edit
  def edit
    
  end

    # PATCH/PUT /decks/1
  # PATCH/PUT /decks/1.json
  def update
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to @deck}
        format.json { render :show, status: :ok, location: @deck }
      else
        format.html { render :edit }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_params
      params.require(:deck).permit(:title, :description)
    end
end