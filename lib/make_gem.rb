# Build a gem framework without having to hack a ton of stuff.

require 'erb'
require_relative 'make_gem/version'
require_relative 'make_gem/process'

puts "make gem utility version: #{::MakeGem::VERSION}"

# Check parameter and extract data.
if ARGV.empty?
  puts "Usage: make_gem your_gem_name", ""
  exit
end

gem_name = ARGV[0]

if gem_name !~ /\A[a-z][a-z0-9_]*\z/
  puts "Invalid gem name: #{gem_name.inspect}", ""
  exit
end

class_name = gem_name.split("_").map(&:capitalize).join
user_name  = (%x{git config --global user.name}).chomp
user_email = (%x{git config --global user.email}).chomp
here       = Dir.pwd + "/"
there      = here + gem_name + "/"


evaluator = binding

puts "Creating gem = #{gem_name}",
     "Module name  = #{class_name}",
     "User name    = #{user_name}",
     "User email   = #{user_email}",
     "Current      = #{here}",
     "Target       = #{there}",
     ""

# Verify that we may proceed.
print "Proceed? (y/n): "
exit unless STDIN.gets[0] == "y"

# Process the request.

puts "0. Establishing starting point."
%x{bundle gem #{gem_name}}
Dir.chdir(gem_name)
%x{git commit -m "Initial commit from bundler."}

puts "1. Removing extraneous files."
%x{git rm .travis.yml}
%x{git rm bin/console}
%x{git rm bin/setup}
%x{git commit -m "Fix phase 1"}

puts "2. Fix up the rake file."
%x{git mv Rakefile rakefile.rb\n}
%x{git commit -m "Fix phase 2"}

puts "3. Fix up the test files."
%x{git rm test/test_helper.rb}
%x{git commit -m "Fix phase 3"}

# Bundler::VERSION.partition(/\d\.\d+/)
# "fooo.md.erb".sub(/\.erb/, "")

puts "** Done. **"
