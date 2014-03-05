require 'thor'

module P
  class Command < Thor
    namespace ''

    desc "new NAME", "Generate a new project for NAME"
    option :template,
      type: :string,
      desc: "The template to use for the project",
      aliases: :t,
      default: 'default'
    def new(name)
      t = P::Template.new(options[:template], name)
      P::Builder.run!(t)
    end

    desc "version", "Show the version"
    def version
      puts P::VERSION
    end
  end
end
