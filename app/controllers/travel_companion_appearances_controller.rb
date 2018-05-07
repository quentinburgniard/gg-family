class TravelCompanionAppearancesController < ApplicationController
  before_action :set_travel_companion_appearance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_company!

  # GET /travel_companion_appearances
  # GET /travel_companion_appearances.json
  def index
    @travel_companion_appearances = TravelCompanionAppearance.all
  end

  # GET /travel_companion_appearances/1
  # GET /travel_companion_appearances/1.json
  def show
  end

  # GET /travel_companion_appearances/new
  def new
    @travel_companion_appearance = TravelCompanionAppearance.new
  end

  # GET /travel_companion_appearances/1/edit
  def edit
  end

  # POST /travel_companion_appearances
  # POST /travel_companion_appearances.json
  def create
    @travel_companion_appearance = TravelCompanionAppearance.new(travel_companion_appearance_params)

    respond_to do |format|
      if @travel_companion_appearance.save
        format.html { redirect_to @travel_companion_appearance, notice: 'Travel companion appearance was successfully created.' }
        format.json { render :show, status: :created, location: @travel_companion_appearance }
      else
        format.html { render :new }
        format.json { render json: @travel_companion_appearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_companion_appearances/1
  # PATCH/PUT /travel_companion_appearances/1.json
  def update
    respond_to do |format|
      if @travel_companion_appearance.update(travel_companion_appearance_params)
        format.html { redirect_to @travel_companion_appearance, notice: 'Travel companion appearance was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_companion_appearance }
      else
        format.html { render :edit }
        format.json { render json: @travel_companion_appearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_companion_appearances/1
  # DELETE /travel_companion_appearances/1.json
  def destroy
    @travel_companion_appearance.destroy
    respond_to do |format|
      format.html { redirect_to travel_companion_appearances_url, notice: 'Travel companion appearance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_companion_appearance
      @travel_companion_appearance = TravelCompanionAppearance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_companion_appearance_params
      params.require(:travel_companion_appearance).permit(:name, :profile_picture, :welcome_picture)
    end
end
