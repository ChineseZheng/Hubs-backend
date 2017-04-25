class Api::V1::ProgressesController < ApplicationController
  before_action :set_api_v1_progress, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/progresses
  # GET /api/v1/progresses.json
  def index
    @api_v1_progresses = Api::V1::Progress.all
  end

  # GET /api/v1/progresses/1
  # GET /api/v1/progresses/1.json
  def show
  end

  # GET /api/v1/progresses/new
  def new
    @api_v1_progress = Api::V1::Progress.new
  end

  # GET /api/v1/progresses/1/edit
  def edit
  end

  # POST /api/v1/progresses
  # POST /api/v1/progresses.json
  def create
    @api_v1_progress = Api::V1::Progress.new(api_v1_progress_params)

    respond_to do |format|
      if @api_v1_progress.save
        format.html { redirect_to @api_v1_progress, notice: 'Progress was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_progress }
      else
        format.html { render :new }
        format.json { render json: @api_v1_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/progresses/1
  # PATCH/PUT /api/v1/progresses/1.json
  def update
    respond_to do |format|
      if @api_v1_progress.update(api_v1_progress_params)
        format.html { redirect_to @api_v1_progress, notice: 'Progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_progress }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/progresses/1
  # DELETE /api/v1/progresses/1.json
  def destroy
    @api_v1_progress.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_progresses_url, notice: 'Progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_progress
      @api_v1_progress = Api::V1::Progress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_progress_params
      params.require(:api_v1_progress).permit(:description)
    end
end
