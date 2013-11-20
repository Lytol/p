module P
  class Builder
    include P::Actions

    attr_accessor :template


    def self.run!(template)
      new(template).run!
    end

    def initialize(template)
      @template = template
      copy_template_variables!
    end

    def run!
      announce "Generating #{@template.template} project `#{@name}`"

      say "Creating base directory `#{@name}`" do
        FileUtils.mkdir(base_directory)
      end

      eval(IO.read(@template.path))
    end

    def source_file(path)
      File.join(@template.directory, path)
    end

    def destination_file(path)
      File.join(base_directory, path)
    end

    def _binding
      binding
    end

    private

      def copy_template_variables!
        @template.variables.each do |k,v|
          instance_variable_set("@#{k}".to_sym, v)
        end
      end

      def base_directory
        File.join(Dir.pwd, @name)
      end

      def announce(str)
        $stdout.print "= #{str}\n"
      end

      def say(str, &block)
        $stdout.print("- #{str}\n")
        yield block
      end
  end
end
