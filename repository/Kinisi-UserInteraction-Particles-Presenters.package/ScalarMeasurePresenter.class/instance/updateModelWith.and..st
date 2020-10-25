private
updateModelWith: newUnit and: newAmount

	[ | newMeasure |
	newMeasure := newUnit with: newAmount.
	measureChangeBlock value: newMeasure.
	self performPostModelChangeAction.
	measure := newMeasure ]
		on: Error
		do: [ :error | 
			self openErrorWindowWith: error messageText.
			amount text: measure amount asString.
			unit selectItem: measure unit.
			error return ]