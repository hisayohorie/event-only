class JobApplicationsController < ApplicationController
  def index
  end

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.save
    redirect_to job_applications_path
  end

  private

  def job_application_params
    params.require(:job_application).permit(:full_name, :phone, :hobby, :years_experience, :available_date)
  end
end
