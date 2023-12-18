class AvanceAppController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    puts "------------ In Index----------"
    @allJobs = Job.all
    puts "# of Jobs = #{@allJobs.size}"
    #sort jobs ?
  end

  def handlePost
    if params[:commit] == "Submit Job"
      enterJob
    elsif params[:commit] == "Delete Job"
      deleteJob
    else
      puts "error: unmatched POST request"
    end # end if elsif else
  end # end handlePost

  #DB function??
  def enterJob
    puts "-----called enterJob------"

    jobID = params[:jobIDInput]
    company = params[:companyInput]
    location = params[:locationInput]
    status = params[:statusInput]
    deadline = params[:deadlineInput]
    nextSteps = params[:nextStepsInput]

    map = {"jobID" => jobID, "company" => company, "location" => location, "status" => status, "deadline" => deadline, "next" => nextSteps}
    newRow = Job.new(map)

    
    respond_to do |format|
      if newRow.save # saves data into database
        puts "success! :)"
        format.html{redirect_to avance_app_url} 
      else
        format.html{redirect_to "/"}
      end #end else
    end #end respond_to do
  end #end enterJob function 

  def deleteJob
    jobID = params[:jobIDInput]
    map = {"jobID" => jobID}
    deleteMe = Job.find(map)
    deleteMe.destroy
  end #end deleteJob


end
