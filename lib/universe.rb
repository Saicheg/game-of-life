class Universe
  attr_reader :cells
  NEIGBORS = [[-1,-1], [-1, 0], [-1, 1],
                   [0, -1], [0,  1],
              [1, -1], [1,  0], [1,  1]]

  def initialize(width, height)
    @width, @height = width, height
    @cells = Array.new(width) { Array.new(height) { Cell.new } }
    glue
  end

  def next
    @cells.each { |row| row.each { |c| c.next} }
    @cells.each { |row| row.each { |c| c.change } }
  end

  private

  def glue
    @cells.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        NEIGBORS.each do |x, y|
          x, y = normalize(x+i, y+j)
          cell.neighbors << @cells[x][y]
        end
      end
    end
  end

  def normalize(x,y)
    x = x - @width if x >= @width
    y = y - @height if y >= @height

    [x,y]
  end

end
