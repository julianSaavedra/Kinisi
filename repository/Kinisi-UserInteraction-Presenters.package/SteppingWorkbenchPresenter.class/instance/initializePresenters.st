initialization
initializePresenters

	specification deltaStepUnits
		ifEmpty: [
			delta := self instantiate: SpLabelledTextInput on: workbench deltaMode.
			delta
				label: 'Delta';
				whenTextChangedDo: [ :newDelta | workbench delta: newDelta ] ]
		ifNotEmpty: [
			delta := self instantiate: ScalarMeasurePresenter on: workbench deltaMode.
			delta
				label: 'Delta';
				units: specification deltaStepUnits;
				changeModelWith: [ :newDelta | workbench delta: newDelta ] ].
	

	modeList := self instantiate: SpLabelledDropList.
	modeList
		label: 'Ending Mode';
		items: helperMap values;
		display: [:modeHelper | modeHelper modeName ];
		whenSelectedItemChanged: [ :selectedHelper | 
			currentHelper change: workbench to: selectedHelper.
			workbench accept: self ].

	workbench accept: self.
	self setFocusOrder