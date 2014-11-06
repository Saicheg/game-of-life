require_relative 'lib/cell'
require_relative 'lib/botanic'
require_relative 'lib/universe'

u = Universe.new(200, 100)
botanic = Botanic.new(u)

100_000.times do
  u.next
  botanic.discover
  sleep 0.2
  puts "\e[H\e[2J"
end
