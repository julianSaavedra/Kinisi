initialization
initializeAmount

	amount := self newNumberInput.
	amount number: measure amount.
	amount whenSubmitDo: [
			(self isValidNumberText: amount number)
				ifTrue: [ self updateModelWith: measure unit and: amount number ]
				ifFalse: [ amount text: measure amount asString ] ]