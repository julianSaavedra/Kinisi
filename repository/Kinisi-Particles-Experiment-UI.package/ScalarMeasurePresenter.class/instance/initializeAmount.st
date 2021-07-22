initialization
initializeAmount

	amount := self newNumberInput.
	amount text: measure amount asString.
	amount whenSubmitDo: [ :newAmountText | 
			(self isValidNumberText: newAmountText)
				ifTrue: [ self updateModelWith: measure unit and: newAmountText asNumber ]
				ifFalse: [ amount text: measure amount asString ] ]