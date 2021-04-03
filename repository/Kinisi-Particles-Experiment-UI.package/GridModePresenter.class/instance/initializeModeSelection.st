initialization
initializeModeSelection

	modeSelection := self instantiate: SpLabelledDropList.
	modeSelection
		label: 'Grid Mode';
		items: helpersMap values;
		display:[:helper | helper modeName ];
		whenSelectedItemChanged:[:selectedModeHelper | self changeSelectedModeWith: selectedModeHelper ]