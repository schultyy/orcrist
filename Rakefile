require "bundler/gem_tasks"

desc "Compiles grammar file to parser"
task :compile_grammar do
  `racc -o lib/wookie/parser.rb lib/wookie/grammar.y`
end

