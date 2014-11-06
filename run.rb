require_relative 'lib/cell'
require_relative 'lib/botanic'
require_relative 'lib/universe'

u = Universe.new(100, 100)
botanic = Botanic.new(u)

loop do
  u.next
  puts "\e[H\e[2J"
  botanic.discover
  sleep 0.05
end
