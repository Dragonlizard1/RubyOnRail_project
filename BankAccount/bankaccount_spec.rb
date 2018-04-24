require_relative 'bankaccount'


RSpec.describe BankAccount do

	
	before(:each) do
		@person1 = BankAccount.new(10000)
		@person2 = BankAccount.new(300)
		@person3 = BankAccount.new(5000)
		end
	it "testing-------------" do
		@person1.withdraw1(500)
		@person2.withdraw1(500)
		@person3.acct_balance
		p "-------how many account"
		@person3.howmanyaccount

	end



end