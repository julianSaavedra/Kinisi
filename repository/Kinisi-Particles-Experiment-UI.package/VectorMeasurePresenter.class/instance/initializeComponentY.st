initialization
initializeComponentY

	componentY := self
		instantiate: ScalarMeasurePresenter
		on: measure y.
	componentY
		label: 'Y';
		units: unitOptions;
		changeModelWith: [:newComponentY |
			self updateModelWith: measure x and: newComponentY ]