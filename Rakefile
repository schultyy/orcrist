require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => [:compile_grammar, :spec]

desc "Compiles grammar file to parser"
task :compile_grammar do
  `racc -o lib/orcrist/parser.rb lib/orcrist/grammar.y`
end

