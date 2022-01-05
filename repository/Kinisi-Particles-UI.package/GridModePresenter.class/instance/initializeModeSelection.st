initialization
initializeModeSelection

	modeSelection := SpLabeledPresenter label: 'Grid Mode' input: self newDropList.
	modeSelection input
		items: helpersMap values;
		display:[:helper | helper modeName ];
		whenSelectedItemChangedDo:[:selectedModeHelper | self changeSelectedModeWith: selectedModeHelper ]