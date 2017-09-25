ENV['RACK_ENV'] = 'test'
require 'employee'
require 'project'
require 'rspec'
require 'pry'
require 'pg'

RSpec.configure do |config|
  config.after(:each) do
    Employee.all.each do |employee|
      employee.destroy
    end

    Division.all.each do |division|
      division.destroy
    end

    Project.all.each do |project|
      project.destroy
    end
  end
end
