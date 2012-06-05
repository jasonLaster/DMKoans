#require "pry"
require "yaml"

require 'rspec/core/formatters/progress_formatter'

class AbortOnFirstFailureFormatter < RSpec::Core::Formatters::BaseFormatter

  def example_started(ex)
    # puts "ex: #{ex.description}"
  end

  def example_failed(example)
 
    failure_data = Hash.new
    failure_data[:lesson] = example.metadata[:example_group][:description_args][0]
    failure_data[:step] = example.description
    failure_data[:exception] = example.exception.to_s
    
    @output.puts YAML::dump(failure_data)
    
    quit_rspec
  end

private

  def quit_rspec
    RSpec.wants_to_quit = true
    exit!(0)
  end

end

