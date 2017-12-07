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

var savingsBalance = 100;
var checkingBalance = 100;

// initialise the balances
savingsAmount.textContent = '$' + savingsBalance.toFixed(2);
checkingAmount.textContent = '$' + checkingBalance.toFixed(2);

var checkNumber = /^[0-9]*$/;

// METHOD1 adding an event listener (preferred method)
savingsDeposit.addEventListener('click', () => actionAccount('savings', 'deposit'));
savingsWithdraw.addEventListener('click', () => actionAccount('savings', 'withdraw'));
checkingDeposit.addEventListener('click', () => actionAccount('checking', 'deposit'));
checkingWithdraw.addEventListener('click', () => actionAccount('checking', 'withdraw'));

function actionAccount(account, action) {
	if (account === 'savings') {
		var balance = savingsBalance;
		var input = Number(savingsInput.value);
		var container = savingsContainer;
		var amount = savingsAmount;
	}

	if (account === 'checking') {
		var balance = checkingBalance;
		var input = Number(checkingInput.value);
		var container = checkingContainer;
		var amount = checkingAmount;		
	}

	if (checkNumber.test(input) && (input <= (savingsBalance + checkingBalance))) {
		if (input > balance) {
			// overdraft
			var remaining = input - balance;
			console.log('remaining', remaining);
			if (account === 'savings') {
				savingsBalance = 0;
				// subtract remaining from other acc
				checkingBalance -= remaining;
			}

			if (account === 'checking') {
				checkingBalance = 0;
				savingsBalance -= remaining;
			}

			changeAccountBackground(checkingBalance, checkingContainer);
			changeAccountBackground(savingsBalance, savingsContainer);
			printNewBalance(checkingBalance, checkingAmount);
			printNewBalance(savingsBalance, savingsAmount);

			console.log('balance', balance);
			console.log('savingsBalance', savingsBalance);
			console.log('checkingBalance', checkingBalance);
		} else {

			if (action === 'deposit') {
				balance += input;
			}
			if (action === 'withdraw') {
				balance -= input;
			}
			// don't let balance go negative
			if (balance < 0) { balance = 0 }
			
			// change colour of background
			changeAccountBackground(balance, container);
			// balance === 0 ? container.classList.add('zero_balance') : container.classList.remove('zero_balance');

			// print to screen the new balance
			printNewBalance(balance, amount);
			
			// reset global balance
			if (account === 'savings') { savingsBalance = balance; } 
			if (account === 'checking') { checkingBalance = balance; }
		}
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

