initialization
initializePresenters

	specification deltaStepUnits
		ifEmpty: [
			delta := self instantiate: SpLabelledTextInput.
			delta text: workbench deltaMode asString.
			delta
				label: 'Delta';
				whenTextChangedDo: [ :newDelta | workbench delta: newDelta asNumber ] ]
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
			workbench accept: self.
			self update ].
	workbench accept: self.

	specification isFixed ifTrue: [
		delta enabled: false.
		modeList enabled: false.
		selectedMode enabled: false].
	
	self setFocusOrder