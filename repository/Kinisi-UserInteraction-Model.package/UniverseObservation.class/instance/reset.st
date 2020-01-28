configuring
reset

	universeState := ObservableUniverseState withAll: #().
	background := Color black.
	colorMapping := Dictionary new.
	zoom := FeatureScaling atPercentage: 0.2.
	scale := UnitProvider soleInstance meter with: 1