class Matriz
  
  attr_reader :row, :col
  
  def initialize(row,col)
    @row,@col = row,col
    @matriz = Array.new(row){Array.new(col,0)}
  end
  
  def [](row,col)
    @matriz[row,col]
  end
  
  def []=(row,col, value)
    @matriz[row,col] = value
  end
  
  def *(other)
    raise TypeError "Las matrices no pueden multiplicarse" unless (@col ==
other.row)
    
    matres = Matriz.new(@row,@col)
    for i in 0...@row
      for j in 0...other.col
	for k in 0...@col
	  matres[i][j]+=@matriz[i][k]*other[k][j]
	end
      end
    end
    matres
  end
  
  
  
end