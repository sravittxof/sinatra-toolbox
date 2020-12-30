class JobsController < ApplicationController

    get 'jobs/new' do
        erb :'/jobs/new'
    end

    post 'jobs' do
        
    end

    get '/jobs' do
        @jobs = Job.all
        erb :'/jobs/index'
    end

    #get do

    #end

end