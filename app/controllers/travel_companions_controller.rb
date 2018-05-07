class TravelCompanionsController < ApplicationController
  before_action :set_travel_companion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_company!

  # GET /travel_companions
  # GET /travel_companions.json
  def index
    @travel_companions = TravelCompanion.all
  end

  # GET /travel_companions/1
  # GET /travel_companions/1.json
  def show
  end

  # GET /travel_companions/new
  def new
    @travel_companion = TravelCompanion.new
  end

  # GET /travel_companions/1/edit
  def edit
  end

  # POST /travel_companions
  # POST /travel_companions.json
  def create
    @travel_companion = TravelCompanion.new(travel_companion_params)

    respond_to do |format|
      if @travel_companion.save
        format.html { redirect_to @travel_companion, notice: 'Travel companion was successfully created.' }
        format.json { render :show, status: :created, location: @travel_companion }
      else
        format.html { render :new }
        format.json { render json: @travel_companion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_companions/1
  # PATCH/PUT /travel_companions/1.json
  def update
    respond_to do |format|
      if @travel_companion.update(travel_companion_params)
        format.html { redirect_to @travel_companion, notice: 'Travel companion was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_companion }
      else
        format.html { render :edit }
        format.json { render json: @travel_companion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_companions/1
  # DELETE /travel_companions/1.json
  def destroy
    @travel_companion.destroy
    respond_to do |format|
      format.html { redirect_to travel_companions_url, notice: 'Travel companion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_companion
      @travel_companion = TravelCompanion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_companion_params
      params.require(:travel_companion).permit(:name, :description, :expertise, :patience, :perfectionism, :ambition, :talkativeness, :travel_companion_appearance_id)
    end
end
