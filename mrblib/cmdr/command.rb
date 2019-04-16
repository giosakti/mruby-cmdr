module Cmdr
  class Command
    attr_accessor :use, :short, :long, :depth

    def initialize(use:, short:, long: nil, run: nil)
      @use = use
      @short = short
      @long = long || short
      @run = run
      @commands = []
      @depth = 0
    end

    def add_command(command)
      command.depth = @depth + 1
      @commands << command
    end

    def execute(argv)
      if @commands == [] || argv.length <= 1
        if !@run.nil?
          @run.call(self, argv)
        else
          help
        end
      else
        command = @commands.find{ |cmd| cmd.use == argv[1]}
        if command
          command.execute(argv[1..-1])
        elsif argv[1] == 'help'
          help
        else
          puts 'Command not found.'
        end
      end
    end

    def generate_command_info
      info = @commands.map{ |cmd| { name: cmd.use, description: cmd.short } }
      info << { name: 'help', description: 'Help about any command' }
      info.sort{ |x,y| x[:name] <=> y[:name] } 
    end

    def help
      str = @long
      str += "\n"
      str += "Usage\n"
      str += "#{@use} [command]\n"
      str += "\n"
      str += "Available Commands:\n"
      generate_command_info.each do |cmd|
        str += "  #{cmd[:name]}     #{cmd[:description]}\n"
      end
      puts str
    end
  end
end
