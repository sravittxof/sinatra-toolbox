class JobsController < ApplicationController

    get 'jobs/new' do
        erb :'/jobs/new'
    end

    post '/jobs' do
        job = current_user.jobs.create(params)
        job.update(complete: false)
        redirect to '/jobs'
    end

    get '/jobs' do
        @jobs = Job.all
        erb :'/jobs/index'
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

    end


end