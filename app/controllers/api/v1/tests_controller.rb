class Api::V1::TestsController < ApplicationController
  before_action :set_api_v1_test, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/tests
  # GET /api/v1/tests.json
  def index
    @api_v1_tests = Api::V1::Test.all
  end

  # GET /api/v1/tests/1
  # GET /api/v1/tests/1.json
  def show
  end

  # GET /api/v1/tests/new
  def new
    @api_v1_test = Api::V1::Test.new
  end

  # GET /api/v1/tests/1/edit
  def edit
  end

  # POST /api/v1/tests
  # POST /api/v1/tests.json
  def create
    @api_v1_test = Api::V1::Test.new(api_v1_test_params)

    respond_to do |format|
      if @api_v1_test.save
        format.html { redirect_to @api_v1_test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_test }
      else
        format.html { render :new }
        format.json { render json: @api_v1_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/tests/1
  # PATCH/PUT /api/v1/tests/1.json
  def update
    respond_to do |format|
      if @api_v1_test.update(api_v1_test_params)
        format.html { redirect_to @api_v1_test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_test }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/tests/1
  # DELETE /api/v1/tests/1.json
  def destroy
    @api_v1_test.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_test
      @api_v1_test = Api::V1::Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_test_params
      params.fetch(:api_v1_test, {})
    end
end
