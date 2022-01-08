initialization
initializeBasedOn: scenario and: interfaceSpec

	| plotResolver |
	measureDimension := interfaceSpec dimension.
	title := RSChartTitleDecoration new title: 'Position'; fontSize: 15.
	xLabel := RSXLabelDecoration new
		          title: 't';
		          fontSize: 13;
		          offset: 0 @ 20.
	yLabel := RSYLabelDecoration new
					title: ('<1s>[t]' expandMacrosWith: measureDimension name asUppercase);
					rotationAngle: 90;	
					fontSize: 13;
					offset: -20 @ 0.
	plotResolver := PlotTypeResolver new. 
	plotColorMap := Dictionary new.
	scenario particles do: [:particle |
		| plot |
		plot := plotResolver resolve: interfaceSpec plotTypeSelector.
		plot color: particle color.
		plotColorMap at: particle particleName put: plot].
	observationStatesMap := Dictionary new.
	scenario particles do: [:particle | observationStatesMap at: particle particleName put: OrderedCollection new ]