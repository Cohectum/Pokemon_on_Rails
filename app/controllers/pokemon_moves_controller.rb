class PokemonMovesController < ApplicationController
  before_action :set_pokemon_move, only: %i[ show edit update destroy ]

  # GET /pokemon_moves or /pokemon_moves.json
  def index
    @pokemon_moves = PokemonMove.all
  end

  # GET /pokemon_moves/1 or /pokemon_moves/1.json
  def show
  end

  # GET /pokemon_moves/new
  def new
    @pokemon_move = PokemonMove.new
  end

  # GET /pokemon_moves/1/edit
  def edit
  end

  # POST /pokemon_moves or /pokemon_moves.json
  def create
    @pokemon_move = PokemonMove.new(pokemon_move_params)

    respond_to do |format|
      if @pokemon_move.save
        format.html { redirect_to pokemon_move_url(@pokemon_move), notice: "Pokemon move was successfully created." }
        format.json { render :show, status: :created, location: @pokemon_move }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemon_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_moves/1 or /pokemon_moves/1.json
  def update
    respond_to do |format|
      if @pokemon_move.update(pokemon_move_params)
        format.html { redirect_to pokemon_move_url(@pokemon_move), notice: "Pokemon move was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemon_move }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemon_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_moves/1 or /pokemon_moves/1.json
  def destroy
    @pokemon_move.destroy

    respond_to do |format|
      format.html { redirect_to pokemon_moves_url, notice: "Pokemon move was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_move
      @pokemon_move = PokemonMove.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_move_params
      params.require(:pokemon_move).permit(:pokemonId, :moveId, :pokemon_id, :move_id)
    end
end
