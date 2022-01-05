initialization
initializeModeList

	modeList := SpLabeledPresenter label: 'Ending Mode' input: self newDropList.
	modeList input
		items: helperMap values;
		display: [:modeHelper | modeHelper modeName ];
		whenSelectedItemChangedDo: [:selectedHelper | self changeSelectedModeWith: selectedHelper ]