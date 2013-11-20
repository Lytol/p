module P
  class FileNotFound < StandardError; end

  module Actions

    def touch(path)
      say "Touching file `#{path}`" do
        FileUtils.touch(destination_file(path))
      end
    end

    def file(path, &block)
      say "Creating file `#{path}`" do
        source = source_file(path)
        destination = destination_file(path)

        file = P::Actions::TemplateFile.new(self, source, destination)
        file.instance_eval(&block) if block_given?
        file.run!
      end
    end

    def directory(path)
      say "Creating directory `#{path}`" do
        FileUtils.mkdir(destination_file(path))
      end
    end
  end
end
