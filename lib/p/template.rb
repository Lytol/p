module P
  class TemplateNotFound < StandardError; end

  class Template
    attr_reader :template, :path, :directory, :name

    def initialize(template, name)
      @template = template
      @path = find_template(template)
      @directory = File.join(File.dirname(@path), template)
      @name = name
    end

    def variables
      { name: name }
    end

    private

      def find_template(t)
        P.template_paths.each do |base|
          path = File.join(base, t + ".rb")
          return path if File.exists?(path)
        end
        raise(TemplateNotFound, "Could not find template `#{t}` in: #{P.template_paths.inspect}")
      end
  end
end
