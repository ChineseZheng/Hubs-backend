class Api::Vi::CoursesController < ApplicationController
  before_action :set_api_vi_course, only: [:show, :edit, :update, :destroy]

  # GET /api/vi/courses
  # GET /api/vi/courses.json
  def index
    @api_vi_courses = Api::Vi::Course.all
  end

  # GET /api/vi/courses/1
  # GET /api/vi/courses/1.json
  def show
  end

  # GET /api/vi/courses/new
  def new
    @api_vi_course = Api::Vi::Course.new
  end

  # GET /api/vi/courses/1/edit
  def edit
  end

  # POST /api/vi/courses
  # POST /api/vi/courses.json
  def create
    @api_vi_course = Api::Vi::Course.new(api_vi_course_params)

    respond_to do |format|
      if @api_vi_course.save
        format.html { redirect_to @api_vi_course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @api_vi_course }
      else
        format.html { render :new }
        format.json { render json: @api_vi_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/vi/courses/1
  # PATCH/PUT /api/vi/courses/1.json
  def update
    respond_to do |format|
      if @api_vi_course.update(api_vi_course_params)
        format.html { redirect_to @api_vi_course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_vi_course }
      else
        format.html { render :edit }
        format.json { render json: @api_vi_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/vi/courses/1
  # DELETE /api/vi/courses/1.json
  def destroy
    @api_vi_course.destroy
    respond_to do |format|
      format.html { redirect_to api_vi_courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_vi_course
      @api_vi_course = Api::Vi::Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_vi_course_params
      params.require(:api_vi_course).permit(:avatar, :name, :description, :category, :video_url, :fans_count, :uploader_id)
    end
end
