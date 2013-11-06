require "lib/matriz.rb"

describe Matriz do
  before :all do
    @m1 = Matriz.new(2,2)
    @m2 = Matriz.new(2,2) 
    @m3 = Matriz.new(2,2)
    @m1[0,0] = 1 
    @m1[0,1] = 2
    @m1[1,0] = 3 
    @m1[1,1] = 4
    @m2[0,0] = 2 
    @m2[0,1] = 3
    @m2[1,0] = 5 
    @m2[1,1] = 4
    
  end
  
  describe "#Indexacion:" do
    it "Acceso a un elemento de la posicion x,y" do
      @m1[0,1]
    end
    it "#Acceso y cambio de valor en la posicion x,y" do      
      @m1[0,0].should == 1
    end
  end

  describe "#Enumerable:" do
    it "Uso ok del enumerable" do
      i, j = 0, 0
      @m1.each do |x|
         x.should == @m1[i, j]
         if j == 0
           j = 1
         else
           j = 0
           i = 1
         end
       end
     end
  end
  
   describe "#Representacion de la matriz:" do
    it "Se ve correctamente" do
      @m1.show.should eq ("[[1, 2], [3, 4]]")
    end
  end
  
  describe "#Suma y Resta de matrices:" do
    it "Suma de m1 y m2" do      
      @m3=@m1+@m2
      @m3[0,0].should == 3
      @m3[0,1].should == 5
      @m3[1,0].should == 8
      @m3[1,1].should == 8
    end
    it "Resta de m1 y m2" do      
      @m3=@m1-@m2
      @m3[0,0].should eq (-1)
      @m3[0,1].should eq (-1)
      @m3[1,0].should eq (-2)
      @m3[1,1].should eq (0)
    end
  end
  
 describe "#Multiplicacion de matrices:" do
    it "Multiplicacion de m1 y m2" do      
      @m3=@m1*@m2
      @m3[0,0].should eq (12)
      @m3[0,1].should eq (11)
      @m3[1,0].should eq (26)
      @m3[1,1].should eq (25)
    end
  end
  
end