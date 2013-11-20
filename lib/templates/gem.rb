file "Gemfile"
file "Rakefile"

file "#{@name}.gemspec" do
  source "gemspec.erb"
end

directory "lib"

file "lib/#{@name.snakecase}.rb" do
  source "lib.erb"
end

directory "test"

file "test/#{@name.snakecase}_test.rb" do
  source "test.erb"
end
