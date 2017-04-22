class Api::V1::TeachersController < ApplicationController
  before_action :set_api_v1_teacher, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/teachers
  # GET /api/v1/teachers.json
  def index
    @api_v1_teachers = Api::V1::Teacher.all
  end

  # GET /api/v1/teachers/1
  # GET /api/v1/teachers/1.json
  def show
  end

  # GET /api/v1/teachers/new
  def new
    @api_v1_teacher = Api::V1::Teacher.new
  end

  # GET /api/v1/teachers/1/edit
  def edit
  end

  # POST /api/v1/teachers
  # POST /api/v1/teachers.json
  def create
    @api_v1_teacher = Api::V1::Teacher.new(api_v1_teacher_params)

    respond_to do |format|
      if @api_v1_teacher.save
        format.html { redirect_to @api_v1_teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_teacher }
      else
        format.html { render :new }
        format.json { render json: @api_v1_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/teachers/1
  # PATCH/PUT /api/v1/teachers/1.json
  def update
    respond_to do |format|
      if @api_v1_teacher.update(api_v1_teacher_params)
        format.html { redirect_to @api_v1_teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_teacher }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/teachers/1
  # DELETE /api/v1/teachers/1.json
  def destroy
    @api_v1_teacher.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_teacher
      @api_v1_teacher = Api::V1::Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_teacher_params
      params.require(:api_v1_teacher).permit(:avatar, :name, :account, :password, :email, :description, :school_id, :student_id_list, :course_id_list, :upload_course_id_list, :loading_info)
    end
end
