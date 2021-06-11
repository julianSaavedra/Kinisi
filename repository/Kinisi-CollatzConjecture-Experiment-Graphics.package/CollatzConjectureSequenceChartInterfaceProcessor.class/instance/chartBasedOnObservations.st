private
chartBasedOnObservations

	| chart |
	chart := RSChart new.
	chart
		addDecoration: (RSChartTitleDecoration new title: 'Collatz Sequence'; fontSize: 15);
		addDecoration: (RSXLabelDecoration new title: 'i'; fontSize: 13; offset: 0 @ 20);
		addDecoration: (RSHorizontalTick new integer fontSize: 8);
		addDecoration: (RSYLabelDecoration new title: 'State'; fontSize: 13; offset: -20 @ 0);
		addDecoration: (RSVerticalTick new integer doNotUseNiceLabel fontSize: 8);
		addPlot: (RSLinePlot new x: observationIndices y: observationStates; 	color: color).
	^chart