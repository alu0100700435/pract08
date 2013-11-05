class Matriz
  
  attr_reader :row, :col
  
  def initialize(row,col)
    @row,@col = row,col
    @matriz = Array.new(row){Array.new(col,0)}
  end
  
  def [](row,col)
    @matriz[row,col]
  end
  
end