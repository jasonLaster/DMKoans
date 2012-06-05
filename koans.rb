require 'pry'
require "yaml"

output_msg = `rspec test.rb --require ./koans/abort_on_first_failure_formatter.rb --format AbortOnFirstFailureFormatter`

failed_test = YAML::load(output_msg)

message = "You have done well."

if failed_test
  lesson = failed_test[:lesson]
  step = failed_test[:step]
  exception = failed_test[:exception]
  
  message = "In #{lesson}, on #{step}, an error of #{exception} occured"
end

puts message
