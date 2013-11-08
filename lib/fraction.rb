# Clase Fraction

require "gcd.rb"

include Comparable

class Fraction
  
  attr_accessor :num, :den  
  
  def initialize(num, den)
    
    com = gcd(num, den)
    if (den < 0)
      @num, @den =  ((-1*num)/com), ((-1*den)/com)
    else 
      @num, @den =  num/com, den/com
    end
  end
  
  def num() 
    @num
  end

  def den()
    @den
  end
  
  def to_s()
    "#{@num}/#{@den}"
  end
 
   def to_f()
     flotante =@num.to_f/@den.to_f
     flotante
   end
  
   def +(other)
    Fraction.new(@num* other.den + other.num*@den, @den * other.den)
   end
   
  def -(other)
    Fraction.new(@num* other.den - other.num*@den, @den * other.den)
  end
 
  def *(other)
     Fraction.new(@num * other.num, @den *other.den)
  end
  
  def /(other)
    Fraction.new(@num * other.den, @den *other.num)
  end
  
  def %(other)
    a = (@num*other.den)
    b = (@den * other.num)
    c = a%b
    c
  end
  
  def abs()
     Fraction.new(@num.abs, @den.abs)
  end
  
  def -@()
    Fraction.new(@num * -1, @den)
  end
   
   def reciprocal()
     Fraction.new(@den, @num)
   end
   
   def reciprocal_div(other)
     Fraction.new( @den *other.num, @num * other.den)
   end
    
   def <=>(other)    
     to_float() <=> other.to_float()    
   end
        
end