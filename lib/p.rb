require 'fileutils'

module P

  VERSION = "0.1.3"

  def self.template_paths
    [ File.join(File.dirname(__FILE__), "templates") ]
  end
end

require_relative "p/template"
require_relative "p/actions"
require_relative "p/actions/template_file"
require_relative "p/builder"
