class JobsController < ApplicationController

    get '/jobs' do
        @jobs = Job.all
        erb :'/jobs/index'
    end

    get '/jobs/new' do
        erb :'/jobs/new'
    end

    post '/jobs' do
        job = current_user.jobs.create(params)
        job.update(complete: false)
        redirect to '/jobs'
    end
 
    get '/jobs/:id' do
        @job = Job.find_by(id: params[:id])
        if @job
            erb :'jobs/show'
        else
            redirect to '/jobs'
        end
    end

    get '/jobs/:id/edit' do
        @job = Job.find_by(id: params[:id])
        if @job.user == current_user
            erb :'/jobs/edit'
        else
            redirect to '/jobs'
        end
    end

    patch '/jobs/:id' do
        @job = Job.find_by(id: params[:id])
        if @job.user == current_user
            @job.update(description: params[:description], summary: params[:summary])
            redirect to "/jobs/#{@job.id}"
        else
            redirect to '/jobs'
        end
    end


end