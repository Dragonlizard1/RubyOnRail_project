
class BankAccount


	@@BankAcctCounter = 0
	@@interest_rate
  	def initialize()
 	 @check_amt = 0
	@saving_amt = 0
	@account_num = 0
	@@BankAcctCounter =  @@BankAcctCounter + 1
	@@interest_rate = 0.01
	gen_acct	
	end

	def check_acct()
		puts "Checking Amount: #{@check_amt} "
		self
	end

	def deposit_check_acct(amt)
		@check_amt = @check_amt + amt
		self
	end

	def withdraw_check_acct(amt)
		if amt > @check_amt
			puts "Error insufficient fund"
		
		else
			@check_amt = @check_amt - amt
		end
		self
	end

	def saving_acct()
		puts "Saving Amount: #{@saving_acct} "
		self
	end

	def deposit_saving_acct(amt)
		@saving_amt = @saving_amt + amt
		self
	end

	def withdraw_saving_acct(amt)
		if amt > @saving_amt
			puts "Error insufficient fund"
			
		else
			@saving_amt = @saving_amt - amt
		end
	end

	def display()
		puts "For Acct # #{@account_num}"
		puts "Checking Amount: #{@check_amt} "
		puts "Saving Amount: #{@saving_amt} "
		total = @check_amt + @saving_amt
		puts "Total Amt: #{total}"
	end

	def calling_acct_info(userinfo)
		account_information(userinfo)
		puts "How Many Acct are there: #{(@@BankAcctCounter-1)}"
	end

	private 
	def gen_acct()
	@account_num = rand() *1000
	
	end

	private
	def account_information(userinfo)
		 puts "-------"
		 userinfo.display
		 puts "Interest Rate: #{@@interest_rate}"
	end
		
end


User1 = BankAccount.new
User1.deposit_saving_acct(1000).deposit_check_acct(2000)
#User1.display
User2 = BankAccount.new
User2.deposit_saving_acct(5000).deposit_check_acct(20000).withdraw_saving_acct(234)
#User2.display
Bank = BankAccount.new

Bank.calling_acct_info(User1)



