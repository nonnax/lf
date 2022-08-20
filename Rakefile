#!/usr/bin/env ruby
# Id$ nonnax 2022-08-20 11:04:18

CONFIG_HOME=File.join ENV['HOME'], '.config', 'lf'

task :default do
 puts 'command: rake install'
end

task :install do
  FileUtils.mkdir CONFIG_HOME unless Dir.exists?(CONFIG_HOME)
  FileUtils.cp Dir['*'], CONFIG_HOME
  puts 'lf config installed to ' + CONFIG_HOME
end


