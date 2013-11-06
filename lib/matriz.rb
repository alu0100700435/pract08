class Matriz
  
  attr_reader :row, :col
  
  include Enumerable

  def initialize(row,col)
    @row,@col = row,col
    @matriz = Array.new(row){Array.new(col,0)}
  end
  
  def [](row,col=nil)
    if(col.nil?)
      @matriz[row]
    else
      @matriz[row][col]
    end
    
  end
  
  def []=(row,col,value)
    @matriz[row][col] = value
  end

  def each()
    @matriz.each do |row|
      row.each { |col| yield col }
    end
  end
  
  def *(other)
    raise TypeError "Las matrices no pueden multiplicarse" unless(@col==other.row)
    
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
  
  def +(other)
    raise TypeError "Las matrices no pueden sumarse" unless(@col== other.col && other.row == @row)
    matres = Matriz.new(@row,@col)
    for i in 0...@row
      for j in 0...@col
	matres[i][j] = @matriz[i][j] + other[i][j]
      end
    end
    matres
    
  end
  
  def -(other)
    raise TypeError "Las matrices no pueden restarse" unless(@col== other.col && other.row == @row)
    
    matres = Matriz.new(@row,@col)
    for i in 0...@row
      for j in 0...@col
	matres[i][j] = @matriz[i][j] - other[i][j]
	
      end
    end
    matres
    
  end

  def show
    @matriz.inspect
  end
  
  
end
