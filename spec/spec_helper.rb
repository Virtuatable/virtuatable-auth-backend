# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require ENV['RACK_ENV'].to_sym

def fp(path)
  File.join(File.dirname(__FILE__), path)
end

Mongoid.load!(fp('../config/mongoid.yml'), ENV['RACK_ENV'].to_sym)

require 'uri/https'
require fp('../helpers/csrf')
require fp('../controllers/base')

require_rel 'support/**/*.rb'
require_rel '../controllers/**/*.rb'
