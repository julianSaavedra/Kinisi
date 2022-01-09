private
chartBasedOnObservations

	| chart |
	chart := RSChart new.
	chart
		addDecoration: title;
		addDecoration: xLabel;
		addDecoration: self verticalTick;
		addDecoration: yLabel.
	self addPlotsTo: chart.
	chart maxValueX: observationIndices last + 5.
	^ ZoomToFitDecoration on: chart