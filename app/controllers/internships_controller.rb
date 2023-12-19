class InternshipsController < ApplicationController
  def index
    @internshipJobs = Job.where(job_type: 'internship')
  end
  # Action to display details of a specific internship job
  def show
    @internshipJob = Job.find(params[:id])
  end
end
