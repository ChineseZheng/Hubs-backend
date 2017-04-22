class Api::V1::StudentsController < ApplicationController
  before_action :set_api_v1_student, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/students
  # GET /api/v1/students.json
  def index
    @api_v1_students = Api::V1::Student.all
  end

  # GET /api/v1/students/1
  # GET /api/v1/students/1.json
  def show
  end

  # GET /api/v1/students/new
  def new
    @api_v1_student = Api::V1::Student.new
  end

  # GET /api/v1/students/1/edit
  def edit
  end

  # POST /api/v1/students
  # POST /api/v1/students.json
  def create
    @api_v1_student = Api::V1::Student.new(api_v1_student_params)

    respond_to do |format|
      if @api_v1_student.save
        format.html { redirect_to @api_v1_student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_student }
      else
        format.html { render :new }
        format.json { render json: @api_v1_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/students/1
  # PATCH/PUT /api/v1/students/1.json
  def update
    respond_to do |format|
      if @api_v1_student.update(api_v1_student_params)
        format.html { redirect_to @api_v1_student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_student }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/students/1
  # DELETE /api/v1/students/1.json
  def destroy
    @api_v1_student.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_student
      @api_v1_student = Api::V1::Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_student_params
      params.require(:api_v1_student).permit(:avatar, :name, :account, :password, :email, :description, :course_id_list, :course_progress, :loading_info)
    end
end
