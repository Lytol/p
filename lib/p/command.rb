require 'thor'

module P
  class Command < Thor::Group
    desc "Generate a project using TEMPLATE and NAME"
    namespace ''

    argument :template, type: :string, desc: "The template for the project"
    argument :name, type: :string, desc: "The name of the project"

    def default
      t = P::Template.new(template, name)
      P::Builder.run!(t)
    end
  end
end
