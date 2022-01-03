private
updateModelWith: newUnit and: newAmount

	[ 
	| newMeasure |
	newMeasure := newUnit with: newAmount.
	measureChangeBlock value: newMeasure.
	self performPostModelChangeAction.
	measure := newMeasure ]
		on: Error
		do: [ :error | 
			self openErrorWindowWith: error messageText.
			self restoreMeasure ]