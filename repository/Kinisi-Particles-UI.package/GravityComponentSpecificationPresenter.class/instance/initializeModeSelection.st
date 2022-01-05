initialization
initializeModeSelection

	modeSelection := SpLabeledPresenter label: 'Gravity Mode' input: self newDropList.
	modeSelection input
		items: helpersMap values;
		display:[:helper | helper modeName ];
		whenSelectedItemChangedDo:[:selectedModeHelper | self changeSelectedModeWith: selectedModeHelper ]