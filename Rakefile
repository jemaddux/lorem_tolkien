#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/lorem_tolkien'
  t.test_files = FileList['test/lib/lorem_tolkien/*_test.rb']
  t.verbose = true
end

task :default => :test