require_relative "rcode"

file_input = ARGV[0]
file_output = ARGV[1]

old_stdout = $stdout
File.open(file_output + '.nc', 'w') do |fo|
  $stdout = fo
  
  puts "%"
  require "#{file_input}"
  puts "M30"
  puts "%"

end
$stdout = old_stdout