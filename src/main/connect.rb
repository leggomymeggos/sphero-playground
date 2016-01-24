require 'artoo'

connection :sphero, adaptor: :sphero, port: '/dev/tty.Sphero-WRB-AMP-SPP'
device :sphero, driver: :sphero

api :host => '127.0.0.1', :port => '4321'

work do
  @count = 1
    every(1.second) do
      sphero.set_color(@count % 2 == 0 ? :yellow : :green)
      @count += 1
    end
end
