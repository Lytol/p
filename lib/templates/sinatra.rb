file "README.md" do
  source "README.erb"
end

file "Gemfile"
file "Rakefile"

file "#{@name.snakecase}.rb" do
  source "app.erb"
end

directory "test"

file "test/test_helper.rb" do
  source "test_helper.erb"
end

file "test/#{@name.snakecase}_test.rb" do
  source "test.erb"
end
