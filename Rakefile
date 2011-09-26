require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/recipe_snippets/*.rb']
  t.verbose = false
end
  
task :default => :test
