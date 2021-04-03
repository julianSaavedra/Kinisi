initialization
initializeModeOptions

	helpersMap := Dictionary new.
	self gridModeHelpers do: [ :helper |
		helpersMap at: helper modeName asSymbol put: helper ]