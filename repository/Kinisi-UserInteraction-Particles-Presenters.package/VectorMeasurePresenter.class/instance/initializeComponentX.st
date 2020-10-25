initialization
initializeComponentX

	componentX := self
		instantiate: ScalarMeasurePresenter
		on: measure x.
	componentX
		label: 'X';
		units: unitOptions;
		changeModelWith: [:newComponentX |
			self updateModelWith: newComponentX and: measure y]
	