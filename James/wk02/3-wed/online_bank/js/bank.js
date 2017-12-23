// SAVINGS
var savingsContainer = document.querySelector('.savings');
var savingsDeposit = document.querySelector('.savings .deposit_button');
var savingsWithdraw = document.querySelector('.savings .savings_button');
var savingsInput = document.querySelector('.savings .amount_input');
var savingsAmount = document.querySelector('.savings .balance');

// CHECKING
var checkingContainer = document.querySelector('.checking');
var checkingDeposit = document.querySelector('.checking .deposit_button');
var checkingWithdraw = document.querySelector('.checking .savings_button');
var checkingInput = document.querySelector('.checking .amount_input');
var checkingAmount = document.querySelector('.checking .balance');

// GLOBALS
var savingsBalance = 100;
var checkingBalance = 100;
var balance;
var input;
var container;
var amount;

// Could do a function that creates objects of accounts with properties????
// Object with balance, and methods withdraw and deposit

// regex for any number or decimal
var checkNumber = /(^[0-9]*$)|([0-9]*\.[0-9]*$)/;

// initialise the balances
savingsAmount.textContent = '$' + savingsBalance.toFixed(2);
checkingAmount.textContent = '$' + checkingBalance.toFixed(2);


// METHOD1 adding an event listener (preferred method)
savingsDeposit.addEventListener('click', () => depositAccount('savings'));
savingsWithdraw.addEventListener('click', () => withdrawAccount('savings'));
checkingDeposit.addEventListener('click', () => depositAccount('checking'));
checkingWithdraw.addEventListener('click', () => withdrawAccount('checking'));

function depositAccount(account) {
	accountSettings(account);

	if (checkNumber.test(input)) {
		balance += input;
		if (account === 'savings') { savingsBalance = balance; } 
		if (account === 'checking') { checkingBalance = balance; }
		changeAccountBackground(balance, container);
		printNewBalance(balance, amount);
	}
}

function withdrawAccount(account) {
	accountSettings(account);

	if (checkNumber.test(input)) {
		// cannot withdraw more than both accounts combined
		if (input <= (savingsBalance + checkingBalance)) {
			if (input > balance) {
				// overdraft
				var remaining = input - balance;
				balance = 0;
				if (account === 'savings') {
					// subtract from other account and update display
					checkingBalance -= remaining;
					changeAccountBackground(checkingBalance, checkingContainer);
					printNewBalance(checkingBalance, checkingAmount);
				}

				if (account === 'checking') {
					savingsBalance -= remaining;
					changeAccountBackground(savingsBalance, savingsContainer);
					printNewBalance(savingsBalance, savingsAmount);
				}
			} else {
				// standard withdraw
				balance -= input;
			}
		}
		if (account === 'savings') { savingsBalance = balance; } 
		if (account === 'checking') { checkingBalance = balance; }
		changeAccountBackground(balance, container);
		printNewBalance(balance, amount);
	}
}

function accountSettings(account) {
	if (account === 'savings') {
		balance = savingsBalance;
		input = Number(savingsInput.value);
		container = savingsContainer;
		amount = savingsAmount;
	}

	if (account === 'checking') {
		balance = checkingBalance;
		input = Number(checkingInput.value);
		container = checkingContainer;
		amount = checkingAmount;		
	}
}

function changeAccountBackground(balance, container) {
	balance === 0 ? container.classList.add('zero_balance') : container.classList.remove('zero_balance');
}

function printNewBalance(balance, amount) {
	(balance >= 0) && (balance < 10) ? amount.textContent = '$0' + balance.toFixed(2) : amount.textContent = '$' + balance.toFixed(2);		
}


// METHOD2 using inline event (HTML onclick) whose value can be overwritten and only allow one event handler
// savingsWithdraw.onclick = function() {
// 	console.log('savingsWithdraw clicked');
// }

// savingsDeposit.onclick = function() {
// 	console.log('savingsDeposit');
// }

