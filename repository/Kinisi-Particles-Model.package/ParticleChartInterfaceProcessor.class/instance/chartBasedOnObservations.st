private
chartBasedOnObservations

	| chart |
	chart := RSChart new.
	chart
		addDecoration: title;
		addDecoration: xLabel.
	self ifThereAreAccumulatorsDo: [ chart addDecoration: self verticalTick ].
	chart addDecoration: yLabel.
	self addPlotsTo: chart.
	self ifThereAreAccumulatorsDo: [ chart maxValueX: observationIndices last + 5].
	^ ZoomToFitDecoration on: chart