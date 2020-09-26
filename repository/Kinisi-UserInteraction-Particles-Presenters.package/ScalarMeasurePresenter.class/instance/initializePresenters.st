private
initializePresenters

	name := self newLabel.
	name label: label.
	amount := self newTextInput.
	amount text: measure amount asString.
	amount
		whenTextIsAcceptedDo: [ :newAmountText | 
			(self isValidNumberText: newAmountText)
				ifTrue: [ self updateModelWith: measure unit and: newAmountText asNumber ]
				ifFalse: [ amount text: measure amount asString ] ].

	unit := self newDropList.
	unit
		items: unitOptions;
		selectItem: measure unit;
		whenSelectedItemChangedDo: [ :newUnit | self updateModelWith: newUnit and: measure amount ].

	self focusOrder
		add: amount;
		add: unit