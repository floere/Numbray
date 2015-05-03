# Make RSpec shut up about deprecations.
#
RSpec.configure { |rspec| rspec.deprecation_stream = StringIO.new }

require_relative '../lib/numbray'

begin
  # Remove this file for the default.
  #
  require_relative 'performance_ratio'
rescue LoadError => e
  # Default is for slower computers and
  # collaborators who don't need to check
  # performance so much.
  #
  Numbray::PerformanceRatio = 0.5
end
def performance_of
  if block_given?
    code = Proc.new
    GC.disable
    t0 = Time.now
    code.call
    t1 = Time.now
    GC.enable
    (t1 - t0) * Numbray::PerformanceRatio
  else
    raise '#performance_of needs a block'
  end
end