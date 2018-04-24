# require "spec_helper"
# RSpec.describe Stringer do
#   it "has a version number" do
#     expect(Stringer::VERSION).not_to be nil
#   end

#   it "does something useful" do
#     expect(false).to eq(false)
#   end
# end


require "spec_helper"
RSpec.describe Stringer do
  # it "concatenates undefined number of strings with a space" do 
  #   expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  # end

  # it "Minify1 number at 8" do
  # 	expect(Stringer.minify "Hello New World of Korea", 8).to eq("Hello Ne...")
  # end

  #   it "Minify2 number at 8" do
  # 	expect(Stringer.minify "Hello", 8).to eq("Hello")
  # end

  #     it "Minify3 number at 8" do
  # 	expect(Stringer.minify "Hello Ne", 8).to eq("Hello Ne...")
  # end

  # it "Repacify string 1" do
  # 	expect(Stringer.repacify "Hello New Welcome", "New", "Kaboom").to eq("Hello Kaboom Welcome")
  # end

  # it "Repacify string 2" do
  # 	expect(Stringer.repacify "Hello New boomer nuker explosion", "nuker", "Kaboom").to eq("Hello New boomer Kaboom explosion")
  # end

  #   it "Repacify string 2" do
  # 	expect(Stringer.repacify "Hello New boomer nuker explosion", "nukwer", "Kaboom").to eq("Hello New boomer nuker explosion")
  # end
 #  it "tokenize 1" do
 #  expect(Stringer.tokenize "I love to code").to eq(["I", "love", "to", "code"])
	# end
	it "removify 1" do
	expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
	end

	
end