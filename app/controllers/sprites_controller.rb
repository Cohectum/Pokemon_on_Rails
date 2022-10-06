class SpritesController < ApplicationController
  before_action :set_sprite, only: %i[ show edit update destroy ]

  # GET /sprites or /sprites.json
  def index
    @sprites = Sprite.all
  end

  # GET /sprites/1 or /sprites/1.json
  def show
  end

  # GET /sprites/new
  def new
    @sprite = Sprite.new
  end

  # GET /sprites/1/edit
  def edit
  end

  # POST /sprites or /sprites.json
  def create
    @sprite = Sprite.new(sprite_params)

    respond_to do |format|
      if @sprite.save
        format.html { redirect_to sprite_url(@sprite), notice: "Sprite was successfully created." }
        format.json { render :show, status: :created, location: @sprite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sprite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprites/1 or /sprites/1.json
  def update
    respond_to do |format|
      if @sprite.update(sprite_params)
        format.html { redirect_to sprite_url(@sprite), notice: "Sprite was successfully updated." }
        format.json { render :show, status: :ok, location: @sprite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sprite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprites/1 or /sprites/1.json
  def destroy
    @sprite.destroy

    respond_to do |format|
      format.html { redirect_to sprites_url, notice: "Sprite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprite
      @sprite = Sprite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sprite_params
      params.require(:sprite).permit(:spriteFront, :spriteBack, :spriteShinyFront, :spriteShinyBack, :spriteFemaleShinyFront, :spriteFemaleShinyBack, :spriteFemailBack, :spriteFemaleFront, :pokemon_id)
    end
end
