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
        @job = Job.find_by(id: params[:id])
        #{"_method"=>"PATCH", "job"=>{"tools"=>[{"id"=>{"4"=>"on"}}]}, "id"=>"8"}
        @job.tools << Tool.where(id: params[:job][:tools][0][:id].keys)
        redirect to "/jobs/#{@job.id}"
    end


end

