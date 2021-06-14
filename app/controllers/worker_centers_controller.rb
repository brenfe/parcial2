class WorkerCentersController < ApplicationController
  before_action :set_worker_center, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  # GET /worker_centers or /worker_centers.json
  def index
    @worker_centers = WorkerCenter.all
  end

  # GET /worker_centers/1 or /worker_centers/1.json
  def show
  end

  # GET /worker_centers/new
  def new
    @worker_center = WorkerCenter.new
  end

  # GET /worker_centers/1/edit
  def edit
  end

  # POST /worker_centers or /worker_centers.json
  def create
    @worker_center = WorkerCenter.new(worker_center_params)

    respond_to do |format|
      if @worker_center.save
        format.html { redirect_to @worker_center, notice: "Worker center was successfully created." }
        format.json { render :show, status: :created, location: @worker_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @worker_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worker_centers/1 or /worker_centers/1.json
  def update
    respond_to do |format|
      if @worker_center.update(worker_center_params)
        format.html { redirect_to @worker_center, notice: "Worker center was successfully updated." }
        format.json { render :show, status: :ok, location: @worker_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worker_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worker_centers/1 or /worker_centers/1.json
  def destroy
    @worker_center.destroy
    respond_to do |format|
      format.html { redirect_to worker_centers_url, notice: "Worker center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker_center
      @worker_center = WorkerCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worker_center_params
      params.require(:worker_center).permit(:worker_id, :medical_center_id)
    end
end
