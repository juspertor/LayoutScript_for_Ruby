
require 'rbconfig'
include RbConfig

case CONFIG['host_os']
  when /mswin|windows/i
    # Windows
    dir="c:/Program Files (x86)/LayoutEditor/ruby"
  when /linux|arch/i
    # Linux
    dir="/opt/layout/ruby"
  when /sunos|solaris/i
    # Solaris
  when /darwin/i
    #MAC OS X
    dir="/Applications/layout.app/Contents"
  else
    # whatever
end


begin
  # .. process
  require dir+"/LayoutScript"
  include LayoutScript
rescue
  # .. handle error
  puts "it seems that the LayoutEditor is not installed on your system"
  puts "please download and install it from https://layouteditor.com/download.html"
ensure

end
