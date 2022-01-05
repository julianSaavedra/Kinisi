private
updateModelWithAmountInput

	^ [ 
	  | newAmount |
	  newAmount := self currentInputAmount.
	  numberChangeBlock value: newAmount.
	  self performPostModelChangeAction.
	  currentNumber := newAmount ]
		  on: Error
		  do: [ :error | 
			  self openErrorWindowWith: error messageText.
			  numberInput number: currentNumber.
			  error return ]