require 'erb'

module P
  module Actions
    class TemplateFile
      def initialize(builder, source, destination)
        @builder = builder
        @source = source
        @destination = destination
      end

      def source(src = nil)
        if src.nil?
          @source
        else
          @source = @builder.source_file(src)
        end
      end

      def run!
        unless File.exists?(@source)
          raise(P::FileNotFound, "missing template file `#{@source}`") 
        end

        if File.extname(@source) == ".erb"
          content = ERB.new(IO.read(@source)).result(@builder._binding)
          IO.write(@destination, content)
        else
          FileUtils.cp(@source, @destination)
        end
      end
    end
  end
end
