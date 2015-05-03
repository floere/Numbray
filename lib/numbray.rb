begin
  require_relative 'numbray/numbray'
rescue LoadError => e
  # Give up and inform the user.
  #
  puts <<-NOTE

Numbray tried to compile its source on your system but failed.

Please add an issue: https://github.com/floere/Numbray/issues/
and copy anything into it that you think is helpful. Thanks!

The problem reported by the compiler was:
#{e}

NOTE
  exit 1
end

require_relative 'numbray/object/array'
require_relative 'numbray/fixnum/array'