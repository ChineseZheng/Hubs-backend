class Api::V1::AdminsController < ApplicationController
  before_action :set_api_v1_admin, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/admins
  # GET /api/v1/admins.json
  def index
    @api_v1_admins = Api::V1::Admin.all
  end

  # GET /api/v1/admins/1
  # GET /api/v1/admins/1.json
  def show
  end

  # GET /api/v1/admins/new
  def new
    @api_v1_admin = Api::V1::Admin.new
  end

  # GET /api/v1/admins/1/edit
  def edit
  end

  # POST /api/v1/admins
  # POST /api/v1/admins.json
  def create
    @api_v1_admin = Api::V1::Admin.new(api_v1_admin_params)

    respond_to do |format|
      if @api_v1_admin.save
        format.html { redirect_to @api_v1_admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_admin }
      else
        format.html { render :new }
        format.json { render json: @api_v1_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/admins/1
  # PATCH/PUT /api/v1/admins/1.json
  def update
    respond_to do |format|
      if @api_v1_admin.update(api_v1_admin_params)
        format.html { redirect_to @api_v1_admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_admin }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/admins/1
  # DELETE /api/v1/admins/1.json
  def destroy
    @api_v1_admin.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_admin
      @api_v1_admin = Api::V1::Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_admin_params
      params.require(:api_v1_admin).permit(:account, :name, :email, :phone, :password, :admin_type_id)
    end
end
