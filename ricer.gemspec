require File.expand_path("../lib/ricer/version", __FILE__)
require "date"

Gem::Specification.new do |s|
  s.name        = "ricer"
  s.version     = Ricer::VERSION
  s.date        = Date.today.to_s
  s.summary     = "A high performance Ruby web server"
  s.description = "Ricer is a high performance Rack-compliant Ruby web server written in C"
  
  s.author      = "Charlie Somerville"
  s.email       = "charlie@charliesomerville.com"
  s.homepage    = "https://github.com/charliesome/ricer"
  
  # clean object files from ext/ before selecting files
  `rake clean`
  s.files       = Dir["LICENSE",
                      "lib/**/*.rb",
                      "bin/ricer",
                      "ext/**/*"]
  s.extensions  = "ext/ricer/extconf.rb"
  
  s.bindir      = "bin"
  s.executables = ["ricer"]
  
  s.required_ruby_version = ">= 1.9.2"
end