require 'pry'
require "yaml"




def run_rspec(file)
  output_msg = `rspec #{file} --require ./koans/abort_on_first_failure_formatter.rb --format AbortOnFirstFailureFormatter`
  YAML::load(output_msg)
end

def output_message(failed_test)
  if failed_test
    lesson = failed_test[:lesson]
    step = failed_test[:step]
    exception = failed_test[:exception]
    message = "#{lesson}, on #{step} \n#{exception}"
  else
    message = "You have done well."
  end
end


failed_test = run_rspec("dm-spec.rb")
message = output_message(failed_test)
puts message

