require 'rake/extensiontask'

Rake::ExtensionTask.new do |ext|
  ext.name = 'numbray'         # indicate the name of the extension.
  ext.ext_dir = 'ext/numbray'  # search for 'numbray' inside it.
  ext.lib_dir = 'lib/numbray'  # put binaries into this folder.
  ext.tmp_dir = 'tmp'         # temporary folder used during compilation.
  ext.source_pattern = "*.c"  # monitor file changes to allow simple rebuild.
  # ext.config_options << '--with-foo' # supply additional options to configure script.
end
