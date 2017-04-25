class Api::V1::UserTypesController < ApplicationController
  before_action :set_api_v1_user_type, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_types
  # GET /api/v1/user_types.json
  def index
    @api_v1_user_types = Api::V1::UserType.all
  end

  # GET /api/v1/user_types/1
  # GET /api/v1/user_types/1.json
  def show
    @api_v1_user_types = Api::V1::UserType.all
  end

  # GET /api/v1/user_types/new
  def new
    @api_v1_user_type = Api::V1::UserType.new
  end

  # GET /api/v1/user_types/1/edit
  def edit
  end

  # POST /api/v1/user_types
  # POST /api/v1/user_types.json
  def create
    @api_v1_user_type = Api::V1::UserType.new(api_v1_user_type_params)

    respond_to do |format|
      if @api_v1_user_type.save
        format.html { redirect_to @api_v1_user_type, notice: 'User type was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_type }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_types/1
  # PATCH/PUT /api/v1/user_types/1.json
  def update
    respond_to do |format|
      if @api_v1_user_type.update(api_v1_user_type_params)
        format.html { redirect_to @api_v1_user_type, notice: 'User type was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_type }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_types/1
  # DELETE /api/v1/user_types/1.json
  def destroy
    @api_v1_user_type.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_types_url, notice: 'User type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_type
      @api_v1_user_type = Api::V1::UserType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_type_params
      params.require(:api_v1_user_type).permit(:name)
    end
end
