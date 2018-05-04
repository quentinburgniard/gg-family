class WorkflowStagesController < ApplicationController
  before_action :set_workflow_stage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_company!

  # GET /workflow_stages
  # GET /workflow_stages.json
  def index
    @workflow_stages = WorkflowStage.all
  end

  # GET /workflow_stages/1
  # GET /workflow_stages/1.json
  def show
  end

  # GET /workflow_stages/new
  def new
    @workflow_stage = WorkflowStage.new
  end

  # GET /workflow_stages/1/edit
  def edit
  end

  # POST /workflow_stages
  # POST /workflow_stages.json
  def create
    @workflow_stage = WorkflowStage.new(workflow_stage_params)

    respond_to do |format|
      if @workflow_stage.save
        format.html { redirect_to @workflow_stage, notice: 'Workflow stage was successfully created.' }
        format.json { render :show, status: :created, location: @workflow_stage }
      else
        format.html { render :new }
        format.json { render json: @workflow_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workflow_stages/1
  # PATCH/PUT /workflow_stages/1.json
  def update
    respond_to do |format|
      if @workflow_stage.update(workflow_stage_params)
        format.html { redirect_to @workflow_stage, notice: 'Workflow stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @workflow_stage }
      else
        format.html { render :edit }
        format.json { render json: @workflow_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workflow_stages/1
  # DELETE /workflow_stages/1.json
  def destroy
    @workflow_stage.destroy
    respond_to do |format|
      format.html { redirect_to workflow_stages_url, notice: 'Workflow stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow_stage
      @workflow_stage = WorkflowStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workflow_stage_params
      params.require(:workflow_stage).permit(:name, :description)
    end
end
