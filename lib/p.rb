require 'fileutils'

module P

  VERSION = "0.2.1"

  def self.template_paths
    template_paths = []
    template_paths << File.join(ENV['HOME'], ".p") # ~/.p directory
    template_paths << File.join(File.dirname(__FILE__), "templates") # Built-in template directory
    template_paths
  end
end

require_relative "p/template"
require_relative "p/actions"
require_relative "p/actions/template_file"
require_relative "p/builder"

require_relative "ext/string"
