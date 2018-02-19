// Make an ATM Class
// For this exercise you will be creating an ATM class.

// It will have the following properties...

// type (e.g., "checking"), which should be determined by some input
// money, which should start out as 0
// It should have the following methods...

// withdraw, which should decrease the amount of money by some input
// deposit, which should increase the amount of money by some input
// showBalance, which should print the amount of money in the bank to the console.
// The Atm class has a transactionHistory property which keeps track of the withdrawals and deposits made to the account.

// Make sure to indicate whether the transaction increased or decreased the amount of money in the bank.

class ATM {
    constructor(type) {
        this.type = type;
        this.money = 0;
        this.transactionHistory = [];
    }

    withdraw(amount) {
        this.money -= amount;
        this.transactionHistory.push(`----------- withdrawn ${amount}`);
    }

    deposit(amount) {
        this.money += amount;
        this.transactionHistory.push(`+++++++++++ deposit ${amount}`);
    }

    showBalance() {
        console.log(this.money);
    }
}

let atm = new ATM('checking')
atm.showBalance();
atm.deposit(50);
atm.showBalance();
atm.withdraw(100);
atm.showBalance();
console.log(atm.transactionHistory.join('\n'));