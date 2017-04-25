class Api::V1::AdminTypesController < ApplicationController
  before_action :set_api_v1_admin_type, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/admin_types
  # GET /api/v1/admin_types.json
  def index
    @api_v1_admin_types = Api::V1::AdminType.all
  end

  # GET /api/v1/admin_types/1
  # GET /api/v1/admin_types/1.json
  def show
    @all_type=Api::V1::AdminType.all
    render json: @all_type
  end

  # GET /api/v1/admin_types/new
  def new
    @api_v1_admin_type = Api::V1::AdminType.new
  end

  # GET /api/v1/admin_types/1/edit
  def edit
  end

  # POST /api/v1/admin_types
  # POST /api/v1/admin_types.json
  def create
    @api_v1_admin_type = Api::V1::AdminType.new(api_v1_admin_type_params)

    respond_to do |format|
      if @api_v1_admin_type.save
        format.html { redirect_to @api_v1_admin_type, notice: 'Admin type was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_admin_type }
      else
        format.html { render :new }
        format.json { render json: @api_v1_admin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/admin_types/1
  # PATCH/PUT /api/v1/admin_types/1.json
  def update
    respond_to do |format|
      if @api_v1_admin_type.update(api_v1_admin_type_params)
        format.html { redirect_to @api_v1_admin_type, notice: 'Admin type was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_admin_type }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_admin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/admin_types/1
  # DELETE /api/v1/admin_types/1.json
  def destroy
    @api_v1_admin_type.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_admin_types_url, notice: 'Admin type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_admin_type
      @api_v1_admin_type = Api::V1::AdminType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_admin_type_params
      params.require(:api_v1_admin_type).permit(:name)
    end
end
