initialization
initializeWidgets

	color := self instantiate: ColorSettingPresenter on: gridConfiguration color.
	color changeModelWith: [:newColor | gridConfiguration color: newColor ].
	size := self instantiate: LabelledTextInput.
	size label: 'Size'.
	size text: gridConfiguration size.
	size whenTextIsAccepted: [:newSizeText |
		[ gridConfiguration size: newSizeText asNumber ]
		on: Error do: [:error |
			ErrorDialogWindow new text: error messageText; open.
			size text: gridConfiguration size ] ].
	distance := self instantiate: ScalarMeasurePresenter on: self distancePresenterDescription