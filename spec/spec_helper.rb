require 'rubygems'
require 'factory_girl'
require 'byebug'

# Requiring Models
require_relative '../lib/models/cell'
require_relative '../lib/models/world'


RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
