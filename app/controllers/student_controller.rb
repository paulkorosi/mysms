class StudentController < ApplicationController
  def index
    @students = Student.order(:last_name, :first_name).paginate(page: params[:page], per_page: Mysms::PAGINATION_PAGE_SIZE)
  end
end
