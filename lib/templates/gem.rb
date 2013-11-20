file "Gemfile"
file "Rakefile"

file "#{@name}.gemspec" do
  source "gemspec.erb"
end

directory "lib"
directory "test"
