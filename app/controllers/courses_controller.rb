class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @image = Image.new
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :cost, :image)
  end

end
