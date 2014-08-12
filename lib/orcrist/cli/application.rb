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

      default_task :exec
    end
  end
end
