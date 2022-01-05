initialization
initializeAmount

	numberInput := self newNumberInput.
	numberInput number: currentNumber.
	numberInput whenSubmitDo: [ self updateModelWithAmountInput ]