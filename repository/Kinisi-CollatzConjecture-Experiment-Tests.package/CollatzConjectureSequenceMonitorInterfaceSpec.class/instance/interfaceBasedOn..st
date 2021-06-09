interface creation
interfaceBasedOn: scenario

	| observationIndices observationStates baseChart newChart processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: [
			observationIndices := OrderedCollection new.
			observationStates := OrderedCollection new.
			baseChart := RSChart new.
			baseChart
				addDecoration: (RSChartTitleDecoration new title: 'Collatz Sequence'; fontSize: 15);
				addDecoration: (RSXLabelDecoration new title: 'i'; fontSize: 13; offset: 0@20);
				addDecoration: (RSHorizontalTick new integer fontSize: 8);
				addDecoration: (RSYLabelDecoration new title: 'State'; fontSize: 13; offset: -20@0);
				addDecoration: (RSVerticalTick new integer doNotUseNiceLabel fontSize: 8).
				]
		processWith: [:observation |
			observationIndices add: observation time. 
			observationStates add: observation value number.
			newChart :=  RSChart new.
			newChart
				addDecoration: (RSChartTitleDecoration new title: 'Collatz Sequence'; fontSize: 15);
				addDecoration: (RSXLabelDecoration new title: 'i'; fontSize: 13; offset: 0@20);
				addDecoration: (RSHorizontalTick new integer fontSize: 8);
				addDecoration: (RSYLabelDecoration new title: 'State'; fontSize: 13; offset: -20@0);
				addDecoration: (RSVerticalTick new integer doNotUseNiceLabel fontSize: 8).
			newChart addPlot: (RSLinePlot new x: observationIndices y: observationStates; color: scenario numberColor).
			newChart]
		andWhenFinishedDo: [ ].
	
	^ObservationInterface using: processor