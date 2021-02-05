initialization
initializeDelta

	specification deltaStepUnits
		ifEmpty: [ delta := self instantiate: SpLabelledTextInput.
			delta text: workbench delta asString.
			delta
				label: 'Delta';
				whenTextChangedDo: [ :newDelta | workbench delta: newDelta asNumber ] ]
		ifNotEmpty: [ delta := self
				instantiate: ScalarMeasurePresenter
				on: workbench delta.
			delta
				label: 'Delta';
				units: specification deltaStepUnits;
				changeModelWith: [ :newDelta | workbench delta: newDelta ] ]