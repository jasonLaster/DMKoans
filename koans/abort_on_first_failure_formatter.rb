require 'rspec/core/formatters/progress_formatter'

class AbortOnFirstFailureFormatter < RSpec::Core::Formatters::BaseFormatter

  def example_started(ex)
    # puts "ex: #{ex.description}"
  end

  def example_failed(example)
    exception_msg = exception_msg(example.exception)
    @output.puts exception_msg
    quit_rspec
  end
end

private

def quit_rspec
  RSpec.wants_to_quit = true
  exit!(0)
end

def exception_msg(exc)
  # exc.to_s.split(/ /)[0..-2].join(" ")
  exc.to_s
end