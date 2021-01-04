class ToolsController < ApplicationController

    get '/tools/job/:id' do
        if logged_in?
            @job = Job.find_by(id: params[:id])
            if @job
                @tools = Tool.where(returned: true)
                erb :"/tools/select"
            else
                redirect to '/jobs'
            end
        else
            redirect to '/'
        end 
    end

    patch '/tools/job/:id' do
        binding.pry
        @job = Job.find_by(id: params[:id])
        #@job.tools << Tool.where(id: params)
        redirect to "/jobs/#{@job.id}"
    end


end

