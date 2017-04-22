class Api::V1::ParentsController < ApplicationController
  before_action :set_api_v1_parent, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/parents
  # GET /api/v1/parents.json
  def index
    @api_v1_parents = Api::V1::Parent.all
  end

  # GET /api/v1/parents/1
  # GET /api/v1/parents/1.json
  def show
  end

  # GET /api/v1/parents/new
  def new
    @api_v1_parent = Api::V1::Parent.new
  end

  # GET /api/v1/parents/1/edit
  def edit
  end

  # POST /api/v1/parents
  # POST /api/v1/parents.json
  def create
    @api_v1_parent = Api::V1::Parent.new(api_v1_parent_params)

    respond_to do |format|
      if @api_v1_parent.save
        format.html { redirect_to @api_v1_parent, notice: 'Parent was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_parent }
      else
        format.html { render :new }
        format.json { render json: @api_v1_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/parents/1
  # PATCH/PUT /api/v1/parents/1.json
  def update
    respond_to do |format|
      if @api_v1_parent.update(api_v1_parent_params)
        format.html { redirect_to @api_v1_parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_parent }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/parents/1
  # DELETE /api/v1/parents/1.json
  def destroy
    @api_v1_parent.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_parents_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_parent
      @api_v1_parent = Api::V1::Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_parent_params
      params.require(:api_v1_parent).permit(:avatar, :name, :account, :password, :email, :description, :course_id_list, :children_id_list, :loading_info)
    end
end
