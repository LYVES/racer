task :default => :compile

task :compile do
  Dir.chdir File.expand_path("../ext/racer", __FILE__)
  system "ruby extconf.rb"
  system "make"
end

task :clean do
  Dir.chdir File.expand_path("../ext/libuv", __FILE__)
  system "make clean"
  Dir.chdir File.expand_path("../ext/racer", __FILE__)
  system "rm -f *.o *.bundle *.a Makefile"
end

task :irb => :compile do
  system "ruby -I./lib -I./ext -rracer -rirb -e 'IRB.start' -- --simple-prompt"
end