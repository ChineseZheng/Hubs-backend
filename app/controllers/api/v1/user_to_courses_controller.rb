class Api::V1::UserToCoursesController < ApplicationController
  before_action :set_api_v1_user_to_course, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_to_courses
  # GET /api/v1/user_to_courses.json
  def index
    @api_v1_user_to_courses = Api::V1::UserToCourse.all
  end

  # GET /api/v1/user_to_courses/1
  # GET /api/v1/user_to_courses/1.json
  def show
  end

  # GET /api/v1/user_to_courses/new
  def new
    @api_v1_user_to_course = Api::V1::UserToCourse.new
  end

  # GET /api/v1/user_to_courses/1/edit
  def edit
  end

  # POST /api/v1/user_to_courses
  # POST /api/v1/user_to_courses.json
  def create
    @api_v1_user_to_course = Api::V1::UserToCourse.new(api_v1_user_to_course_params)

    respond_to do |format|
      if @api_v1_user_to_course.save
        format.html { redirect_to @api_v1_user_to_course, notice: 'User to course was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_to_course }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_to_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_to_courses/1
  # PATCH/PUT /api/v1/user_to_courses/1.json
  def update
    respond_to do |format|
      if @api_v1_user_to_course.update(api_v1_user_to_course_params)
        format.html { redirect_to @api_v1_user_to_course, notice: 'User to course was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_to_course }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_to_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_to_courses/1
  # DELETE /api/v1/user_to_courses/1.json
  def destroy
    @api_v1_user_to_course.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_to_courses_url, notice: 'User to course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_to_course
      @api_v1_user_to_course = Api::V1::UserToCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_to_course_params
      params.require(:api_v1_user_to_course).permit(:user_id, :course_id, :category_id)
    end
end
