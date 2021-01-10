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
  
    post '/tools/job/:id' do
        @job = Job.find_by(id: params[:id])
        #{"_method"=>"PATCH", "job"=>{"tools"=>[{"id"=>{"4"=>"on"}}]}, "id"=>"8"}   

        params[:job][:tool_ids].each do |tool_id|
            tool = Tool.find_by(id: tool_id)
            if tool.returned && tool.currentjob == nil
                @job.tools << tool
                tool.update(returned: false, currentjob: @job.id)
            end
        end
        redirect to "/jobs/#{@job.id}"
    end

    get '/tools/job/:id/edit' do
        if logged_in?
            @job = Job.find_by(id: params[:id])
            if @job
                @tools = @job.tools.where(returned: false, currentjob: @job.id)
                erb :"/tools/edit"
            else
                redirect to '/jobs'
            end
        else
            redirect to '/'
        end 
    end

    patch '/tools/job/:id' do
        if logged_in?
            @job = Job.find_by(id: params[:id])
            params[:job][:tool_ids].each do |tool_id|
                Tool.find_by(id: tool_id).update(returned: true, currentjob: nil)
                end
            redirect to "/jobs/#{@job.id}"
        else
            redirect to '/'
        end 
    end

end

