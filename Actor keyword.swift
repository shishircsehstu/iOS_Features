// In Swift, an actor is a reference type like a class that help to access only one task can modify at a time.

Example: Without Actor (Unsafe Code)
If we use a regular class, multiple tasks could modify balance simultaneously, leading to inconsistent data:

class BankAccount {
    var balance = 0

    func deposit(amount: Int) {
        balance += amount
    }
}

let account = BankAccount()

Task {
    account.deposit(amount: 100)
}

Task {
    account.deposit(amount: 50)
}

// If both tasks run at the same time, balance might be incorrect
Problem:
If two tasks modify balance at the same time, some updates may be lost due to race conditions.

Example: With Actor (Safe Code)
Using an actor, Swift ensures that only one task at a time can modify balance:

actor BankAccount {
    private var balance: Int = 0

    func deposit(amount: Int) {
        balance += amount
    }
    
    func getBalance() -> Int {
        return balance
    }
}

let account = BankAccount()

Task {
    await account.deposit(amount: 100)  // First task
}

Task {
    await account.deposit(amount: 50)   // Second task
}

// Swift ensures these run one after another, preventing data corruption
