require 'sinatra/base'
require './lib/peep'
class Chitter < Sinatra::Base
    get '/' do
        "Welcome to Chitter!"
    end

    get '/peeps' do
        @peeps = Peep.all
        erb(:'peeps/index')
    end

    get '/peeps/new' do
        erb :"peeps/new"
    end

    post '/peeps' do
        Peep.create(params['peep'])
        redirect '/peeps'
    end
    
end