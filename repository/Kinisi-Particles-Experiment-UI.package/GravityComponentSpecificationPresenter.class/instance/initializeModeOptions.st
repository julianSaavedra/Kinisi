initialization
initializeModeOptions

	helpersMap := Dictionary new.
	self gravityModeHelpers do: [ :helper |
		helpersMap at: helper modeName asSymbol put: helper ]