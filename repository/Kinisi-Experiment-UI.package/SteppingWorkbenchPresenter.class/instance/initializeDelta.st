initialization
initializeDelta

	specification deltaStepUnits
		ifEmpty: [
			delta := SpLabeledPresenter label: 'Delta' input: self newTextInput.
			delta input
				text: workbench delta asString;
				whenTextChangedDo: [:newDelta | workbench delta: newDelta asNumber ] ]
		ifNotEmpty: [:units |
			delta := self instantiate: ScalarMeasurePresenter on: workbench delta.
			delta
				label: 'Delta';
				units: units;
				changeModelWith: [ :newDelta | workbench delta: newDelta ] ]