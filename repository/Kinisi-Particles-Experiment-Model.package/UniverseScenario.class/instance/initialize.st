initialization
initialize

	super initialize.
	universeState := ObservableUniverseState empty.
	gravitationalSpecification := NullChangeComponentSpecification new.
	background := Color black.
	zoom := FeatureScaling atPercentage: 0.2.
	scale := UnitProvider soleInstance meter with: 1.
	gridMode := GridMode noGrid