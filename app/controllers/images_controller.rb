class ImagesController < ApplicationController

  def create
    @course = Course.find(params[:course_id])
    @course.images.create(image_params.merge(user: current_user))  
    redirect_to course_path(@course)
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
