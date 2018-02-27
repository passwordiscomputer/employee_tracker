require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require('./lib/division')
require('./lib/project')
require('./lib/employee')
require('rspec')
require('pg')
require('pry')

get('/') do
  @divisions = Division.all
  @employees = Employee.all
  erb(:index)
end

get('/divisions') do
  erb(:divisions)
end

post('/divisions') do
  @division = Division.create(name: params[:name])
  @divisions = Division.all
  binding.pry
  erb(:divisions)
end
