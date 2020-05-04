private
initializeWidgets
	
	name := self newLabel.
	name label: label.
	amount := self newTextInput.
	amount text: measure amount.
	amount 	whenTextIsAccepted: [:newAmountText |
			(self isValidNumberText: newAmountText)
				ifTrue: [ self updateModelWith: measure unit and: newAmountText asNumber ]
				ifFalse: [ amount text: measure amount ] ].
	
	unit := self newDropList.	
	unit
		items: unitOptions;
		setSelectedItem: measure unit;
		whenSelectedItemChanged: [:newUnit |
			self updateModelWith: newUnit and: measure amount].
	
	self focusOrder
		add: amount;
		add: unit