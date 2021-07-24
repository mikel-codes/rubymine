class Account
    attr_accessor :balance # This variable can be manipulated(+rw)
    def initialize(balance)
        @balance = balance

    end 

end

class Transaction
    
  def initialize(account_a, account_b)
        @account_a = account_a
        @account_b = account_b

    end
    private
  
    def debit(account,amount)
        account.balance -= amount
        puts "Transferring #{amount} from #{account}"
    end
    def credit(account, amount)
        account.balance += amount
        puts "Receiving #{amount} to #{account}"
    
    end

    public
    def transfer(amount)
        debit(@account_a,amount) # sends )loses cash
        credit(@account_b,amount) # receives )earns cash
    
    end

end


savings = Account.new(2000)
savings_01 = Account.new(6000)

rxTx = Transaction.new(savings_01,savings)
rxTx.transfer(1000)

print savings.public_methods, " "
print Account.ancestors, " "
