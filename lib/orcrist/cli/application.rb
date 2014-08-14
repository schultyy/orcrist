require 'thor'
require 'orcrist/interpreter'

module Orcrist
  module CLI
    class Application < Thor
      desc "exec FILENAME", "Run the given file"
      def exec(filename)
        interpreter = Interpreter.new
        interpreter.eval(File.read(filename))
      end

      desc "repl", "Start interactive console"
      def repl
        interpreter = Interpreter.new
        loop do
          print ">>> "
          puts interpreter.eval(gets).ruby_value
        end
      end

      default_task :repl
    end
  end
end
