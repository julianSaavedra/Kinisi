initialization
initializeModeList

	modeList := self instantiate: SpLabelledDropList.
	modeList
		label: 'Ending Mode';
		items: helperMap values;
		display: [:modeHelper | modeHelper modeName ];
		whenSelectedItemChanged: [:selectedHelper | self changeSelectedModeWith: selectedHelper ]