require 'fileutils'

module P
  class FileNotFound < StandardError; end

  module Actions

    def touch(path)
      say "Touching file `#{path}`" do
        FileUtils.touch(in_directory(path))
      end
    end

    def file(path)
      say "Creating file `#{path}`" do
        source = in_template_directory(path)
        destination = in_directory(path)

        unless File.exists?(source)
          raise(P::FileNotFound, "missing template file `#{source}`") 
        end

        FileUtils.cp(source, destination)
      end
    end

    def directory(path)
      say "Creating directory `#{path}`" do
        FileUtils.mkdir(in_directory(path))
      end
    end
  end
end
