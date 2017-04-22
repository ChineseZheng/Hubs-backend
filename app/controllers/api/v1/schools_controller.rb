class Api::V1::SchoolsController < ApplicationController
  before_action :set_api_v1_school, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/schools
  # GET /api/v1/schools.json
  def index
    @api_v1_schools = Api::V1::School.all
  end

  # GET /api/v1/schools/1
  # GET /api/v1/schools/1.json
  def show
  end

  # GET /api/v1/schools/new
  def new
    @api_v1_school = Api::V1::School.new
  end

  # GET /api/v1/schools/1/edit
  def edit
  end

  # POST /api/v1/schools
  # POST /api/v1/schools.json
  def create
    @api_v1_school = Api::V1::School.new(api_v1_school_params)

    respond_to do |format|
      if @api_v1_school.save
        format.html { redirect_to @api_v1_school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_school }
      else
        format.html { render :new }
        format.json { render json: @api_v1_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/schools/1
  # PATCH/PUT /api/v1/schools/1.json
  def update
    respond_to do |format|
      if @api_v1_school.update(api_v1_school_params)
        format.html { redirect_to @api_v1_school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_school }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/schools/1
  # DELETE /api/v1/schools/1.json
  def destroy
    @api_v1_school.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_school
      @api_v1_school = Api::V1::School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_school_params
      params.require(:api_v1_school).permit(:avatar, :name, :account, :password, :email, :description, :student_id_list, :teacher_id_list, :teacher_count, :student_count, :loading_info)
    end
end
