class JobsController < ApplicationController
  def index
    @jobs = Job.order(:created_at)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job,
                  notice: "Job created successfully!"
    else
      flash.now[:alert] = "Failed to create job"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job,
                  notice: "Job updated successfully!"
    else
      flash.now[:alert] = "Failed to update job"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find(params[:id])

    if @job.destroy
      redirect_to jobs_path,
                  notice: "Job deleted successfully!"
    else
      redirect_to jobs_path,
                  alert: "Failed to delete job"
    end
  end

  private

  def job_params
    params.require(:job)
          .permit(:title, :company, :status, :notes)
  end
end