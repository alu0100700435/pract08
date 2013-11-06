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
  
end