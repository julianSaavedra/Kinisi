initialization
initializeAmount

	amount := self newTextInput.
	amount text: measure amount asString.
	amount
		whenTextIsAcceptedDo: [ :newAmountText | 
			(self isValidNumberText: newAmountText)
				ifTrue: [ self updateModelWith: measure unit and: newAmountText asNumber ]
				ifFalse: [ amount text: measure amount asString ] ]