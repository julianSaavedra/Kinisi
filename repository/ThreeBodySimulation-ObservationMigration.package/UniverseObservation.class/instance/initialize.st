initialization
initialize

	super initialize.
	universeState := ObservableUniverseState with: #().
	colorMapping := Dictionary new