require('sinatra')
require('sinatra/reloader')
require 'sinatra/activerecord'
also_reload('lib/**/*.rb')
require('./lib/employee')
require('./lib/division')
require('./lib/project')
require('pg')
require "pry"


get('/') do
  @divisions = Division.all
  erb(:index)
end

post('/') do
  department = params.fetch('department')
  divisions = Division.create({:department => department, :id => nil})
  @divisions = Division.all
  erb(:index)
end

get('/division/:id') do
  @divisions = Division.find(params.fetch(:id).to_i)
  erb(:division_detail)
end

patch('/division/:id') do
  department = params.fetch('department')
  @division = Division.find(params.fetch('id').to_i)
  @division.update({:department => department})
  @divisions = Division.all
  erb(:index)
end
