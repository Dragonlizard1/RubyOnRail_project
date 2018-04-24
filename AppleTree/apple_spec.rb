require_relative 'apple'
RSpec.describe Apple do
 before(:each) do 
  @apple1 = Apple.new
end


 it "starting count" do
      (0..13).each do |x|
        p "#{x} year"
        @apple1.year_gone_by

        @apple1.pick_apples if x == 7 
       end


  end
end