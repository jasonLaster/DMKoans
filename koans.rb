require 'pry'

require "yaml"


curr_dir = File.expand_path(".")
output_msg = `rspec test.rb --require #{curr_dir}/koans/abort_on_first_failure_formatter.rb --format AbortOnFirstFailureFormatter`  

failure = YAML::load(output_msg)

lesson = failure[:lesson]
step = failure[:step]
exception = failure[:exception]

binding.pry

message = 
case lesson
when "Lesson 1"
  case step
  when "Step 1"
    case exception
    when "uninitialized constant DataMapper"
      "DataMapper wasn't loaded"
      
    else
      "I don't know what you did. But it was bad."
    end
  end
else
  "You have done well."
end

puts message
