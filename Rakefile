# Rakefile copied from https://github.com/mileszs/ack.vim (license is
# unknown).
# Modified by Shlomi Fish, while disclaiming all rights to the modifications.
#
# Added by Josh Nichols, a.k.a. technicalpickles
require 'rake'

plugin_name = 'freecell'
files = ["doc/#{plugin_name}.txt", "syntax/#{plugin_name}.vim"]

desc 'Install plugin and documentation'
task :install do
  vimfiles = if ENV['VIMFILES']
               ENV['VIMFILES']
             elsif RUBY_PLATFORM =~ /(win|w)32$/
               File.expand_path("~/vimfiles")
             else
               File.expand_path("~/.vim")
             end
  files.each do |file|
    target_file = File.join(vimfiles, file)
    FileUtils.mkdir_p File.dirname(target_file)
    FileUtils.cp file, target_file

    puts "  Copied #{file} to #{target_file}"
  end

end
