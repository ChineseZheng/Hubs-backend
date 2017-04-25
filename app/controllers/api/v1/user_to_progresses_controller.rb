class Api::V1::UserToProgressesController < ApplicationController
  before_action :set_api_v1_user_to_progress, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_to_progresses
  # GET /api/v1/user_to_progresses.json
  def index
    @api_v1_user_to_progresses = Api::V1::UserToProgress.all
  end

  # GET /api/v1/user_to_progresses/1
  # GET /api/v1/user_to_progresses/1.json
  def show
  end

  # GET /api/v1/user_to_progresses/new
  def new
    @api_v1_user_to_progress = Api::V1::UserToProgress.new
  end

  # GET /api/v1/user_to_progresses/1/edit
  def edit
  end

  # POST /api/v1/user_to_progresses
  # POST /api/v1/user_to_progresses.json
  def create
    @api_v1_user_to_progress = Api::V1::UserToProgress.new(api_v1_user_to_progress_params)

    respond_to do |format|
      if @api_v1_user_to_progress.save
        format.html { redirect_to @api_v1_user_to_progress, notice: 'User to progress was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_to_progress }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_to_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_to_progresses/1
  # PATCH/PUT /api/v1/user_to_progresses/1.json
  def update
    respond_to do |format|
      if @api_v1_user_to_progress.update(api_v1_user_to_progress_params)
        format.html { redirect_to @api_v1_user_to_progress, notice: 'User to progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_to_progress }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_to_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_to_progresses/1
  # DELETE /api/v1/user_to_progresses/1.json
  def destroy
    @api_v1_user_to_progress.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_to_progresses_url, notice: 'User to progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_to_progress
      @api_v1_user_to_progress = Api::V1::UserToProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_to_progress_params
      params.require(:api_v1_user_to_progress).permit(:user_id, :course_id, :category_id)
    end
end
