initialization
initialize

	super initialize.
	universeState := ObservableUniverseState empty.
	background := Color black.
	zoom := FeatureScaling atPercentage: 0.2.
	scale := UnitProvider soleInstance meter with: 1.
	isGridVisible := true.
	gridColor := Color gray