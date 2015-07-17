class LostPetsController < ApplicationController
  before_action :set_lost_pet, only: [:show, :edit, :update, :destroy]

  # GET /lost_pets
  # GET /lost_pets.json
  def index
    @lost_pets = LostPet.all
  end

  # GET /lost_pets/1
  # GET /lost_pets/1.json
  def show
  end

  # GET /lost_pets/new
  def new
    @lost_pet = LostPet.new
  end

  # GET /lost_pets/1/edit
  def edit
  end

  # POST /lost_pets
  # POST /lost_pets.json
  def create
    @lost_pet = LostPet.new(lost_pet_params)

    respond_to do |format|
      if @lost_pet.save
        format.html { redirect_to @lost_pet, notice: 'Lost pet was successfully created.' }
        format.json { render :show, status: :created, location: @lost_pet }
      else
        format.html { render :new }
        format.json { render json: @lost_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_pets/1
  # PATCH/PUT /lost_pets/1.json
  def update
    respond_to do |format|
      if @lost_pet.update(lost_pet_params)
        format.html { redirect_to @lost_pet, notice: 'Lost pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @lost_pet }
      else
        format.html { render :edit }
        format.json { render json: @lost_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_pets/1
  # DELETE /lost_pets/1.json
  def destroy
    @lost_pet.destroy
    respond_to do |format|
      format.html { redirect_to lost_pets_url, notice: 'Lost pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_pet
      @lost_pet = LostPet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_pet_params
      params.require(:lost_pet).permit(:status, :info, :report_date, :lost_date, :latitude, :longitude, :found_date, :pet_id, :user_id, :district_id)
    end
end
