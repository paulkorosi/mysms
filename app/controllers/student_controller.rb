class StudentController < ActionController::Base
  def index
    @students = Student.order(:last_name, :first_name).paginate(page: params[:page])
  end
end
