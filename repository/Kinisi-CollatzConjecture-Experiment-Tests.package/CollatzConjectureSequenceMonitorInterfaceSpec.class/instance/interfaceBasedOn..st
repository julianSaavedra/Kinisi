interface creation
interfaceBasedOn: scenario

	| observationIndices observationStates chart canvas processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: [
			observationIndices := OrderedCollection new.
			observationStates := OrderedCollection new.
			canvas := SpRoassalPresenter new.
			canvas script: [:aCanvas |
				observationIndices ifNotEmpty: [
					chart := RSChart new.
					chart
						addPlot: (RSLinePlot new x: observationIndices y: observationStates; color: scenario numberColor);
						addDecoration: (RSChartTitleDecoration new title: 'Collatz Sequence'; fontSize: 15);
						addDecoration: (RSXLabelDecoration new title: 'i'; fontSize: 13; offset: 0@20);
						addDecoration: (RSHorizontalTick new integer fontSize: 8);
						addDecoration: (RSYLabelDecoration new title: 'State'; fontSize: 13; offset: -20@0);
						addDecoration: (RSVerticalTick new integer doNotUseNiceLabel fontSize: 8).
						chart renderIn: aCanvas.
						aCanvas zoomToFit] ].
			canvas openWithSpec.
			canvas withWindowDo: [:window |
				window
					title: 'Collatz Sequence';
					extent: 1000@1000]
			] 
		processWith: [:observation |
			observationIndices add: observation time. 
			observationStates add: observation value number.
			canvas refresh ]
		andWhenFinishedDo: [ ].
	
	^ObservationInterface using: processor