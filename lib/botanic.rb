class Botanic
  def initialize(universe)
    @universe = universe
  end

  def discover
    str = ''

    @universe.cells.each do |row|
      row.each do |cell|
        str += cell.state == 0 ? ' ' : '*'
      end
      str += "\n"
    end

    puts str
  end
end
