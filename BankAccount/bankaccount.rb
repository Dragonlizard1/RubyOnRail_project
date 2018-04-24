class BankAccount
  @bankamount
  @@bankaccount = 0
  def initialize amount
    @bankamount = amount
    @@bankaccount += 1
  end

  def acct_balance
    p "Your Balance: $#{@bankamount}"
  end



  def withdraw1 amount
     if amount < @bankamount
       @bankamount -= amount
       p "You have successfuly withdraw.Balance: #{@bankamount}"
     else
      p "Insufficient Fund"
    end
  end

  def howmanyaccount
    p "there is this many account#{@@bankaccount}"
  end

end