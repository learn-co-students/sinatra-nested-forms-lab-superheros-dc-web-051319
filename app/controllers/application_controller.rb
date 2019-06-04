# frozen_string_literal: true

require 'sinatra/base'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :index
  end

  post '/teams' do
    @params = params
    @team = params['team']
    @team_members = params['team']['members']
    erb :teams
  end
end
