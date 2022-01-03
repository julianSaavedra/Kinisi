private
chartBasedOnObservations

	| chart |
	chart := RSChart new.
	chart
		addDecoration: title;
		addDecoration: xLabel;
		addDecoration: self horizontalTick;
		addDecoration: yLabel;
		addDecoration: verticalTick;
		addPlot: self plot.
	^ZoomToFitDecoration on: chart