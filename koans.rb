require 'pry'

$failed_examples = []

curr_dir = File.expand_path(".")
failed_msg = `rspec test.rb --require #{curr_dir}/koans/abort_on_first_failure_formatter.rb --format AbortOnFirstFailureFormatter `  
puts failed_msg