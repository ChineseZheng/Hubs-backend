class Api::V1::PendingsController < ApplicationController
  before_action :set_api_v1_pending, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/pendings
  # GET /api/v1/pendings.json
  def index
    @api_v1_pendings = Api::V1::Pending.all
  end

  # GET /api/v1/pendings/1
  # GET /api/v1/pendings/1.json
  def show
  end

  # GET /api/v1/pendings/new
  def new
    @api_v1_pending = Api::V1::Pending.new
  end

  # GET /api/v1/pendings/1/edit
  def edit
  end

  # POST /api/v1/pendings
  # POST /api/v1/pendings.json
  def create
    @api_v1_pending = Api::V1::Pending.new(api_v1_pending_params)

    respond_to do |format|
      if @api_v1_pending.save
        format.html { redirect_to @api_v1_pending, notice: 'Pending was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_pending }
      else
        format.html { render :new }
        format.json { render json: @api_v1_pending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/pendings/1
  # PATCH/PUT /api/v1/pendings/1.json
  def update
    respond_to do |format|
      if @api_v1_pending.update(api_v1_pending_params)
        format.html { redirect_to @api_v1_pending, notice: 'Pending was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_pending }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_pending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/pendings/1
  # DELETE /api/v1/pendings/1.json
  def destroy
    @api_v1_pending.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_pendings_url, notice: 'Pending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_pending
      @api_v1_pending = Api::V1::Pending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_pending_params
      params.require(:api_v1_pending).permit(:avatar_url, :account, :name, :password, :email, :phone, :description, :user_type_id)
    end
end
