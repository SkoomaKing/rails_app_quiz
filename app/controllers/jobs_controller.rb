class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @job = Job.new(job_params)
    render json: { job: @job }
  end

  def show
    @job = Job.find_by(id: params[:id])
    render json: { job: @job }
  end

  def index
    render json: Job.all.to_json
  end

  private

  def job_params
    params.permit(
      :url,
      :employer_name,
      :employer_description,
      :job_title,
      :job_description,
      :year_of_experience,
      :industry,
      :base_salary,
      :employment_type_id
    )
  end
end
