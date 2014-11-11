require "mkmf"

$CFLAGS << " -std=c99 -fPIC"

$DLDFLAGS << " -fPIC"

if RUBY_PLATFORM =~ /darwin/
  $DLDFLAGS << " -framework CoreServices"
end

libuv_dir = File.expand_path("../../libuv", __FILE__)
racer_dir = File.expand_path("../", __FILE__)

system "cd '#{libuv_dir}'; CFLAGS='-fPIC' make; cd '#{racer_dir}'; cp #{libuv_dir}/uv.a #{racer_dir}/libuv.a"

dir_config "uv", "#{libuv_dir}/include", racer_dir
have_library "uv"

#dir_config "racer"
create_makefile "racer/racer"