class JobsController < ApplicationController

    get '/jobs' do
        if logged_in?
            @jobs = Job.all
            erb :'/jobs/index'
        else
            redirect to '/'
        end
    end

    get '/jobs/new' do
        if logged_in?
            erb :'/jobs/new'
        else
            redirect to '/'
        end
    end

    post '/jobs' do
        job = current_user.jobs.create(params)
        job.update(complete: false)
        redirect to '/jobs'
    end
 
    get '/jobs/:id' do
        if logged_in?
            @job = Job.find_by(id: params[:id])
            if @job
                erb :'jobs/show'
            else
                redirect to '/jobs'
            end
        else
            redirect to '/'
        end
    end


    get '/jobs/:id/edit' do
        if logged_in?
            @job = Job.find_by(id: params[:id])
            if @job.user == current_user
                erb :'/jobs/edit'
            else
                redirect to '/jobs'
            end
        else
            redirect to '/'
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

    delete '/jobs/:id' do 
        job = Job.find_by(id: params[:id])
        if job.user == current_user
            job.destroy
            redirect to '/jobs'
        else
            redirect to '/jobs'
        end
    end
end