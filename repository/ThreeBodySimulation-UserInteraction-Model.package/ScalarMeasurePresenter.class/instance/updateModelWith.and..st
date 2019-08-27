private
updateModelWith: newUnit and: newAmount
	
	| newMeasure |
	newMeasure := newUnit with: newAmount.
	[measureChangeBlock value: newMeasure]
		on: Error
		do: [:error |
			self openErrorWindowWith: error messageText.
			amount text: measure amount.
			unit setSelectedItem: measure unit.
			error return ].
	self performPostModelChangeAction.
	measure := newMeasure