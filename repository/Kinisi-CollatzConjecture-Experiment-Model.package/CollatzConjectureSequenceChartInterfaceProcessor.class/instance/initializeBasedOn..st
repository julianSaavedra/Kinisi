initialization
initializeBasedOn: scenario

	color := scenario numberColor.
	title := RSChartTitleDecoration new title: 'Collatz Sequence'; fontSize: 15.
	xLabel := RSXLabelDecoration new
		          title: 'i';
		          fontSize: 13;
		          offset: 0 @ 20.
	yLabel := RSYLabelDecoration new
		          title: 'State';
		          fontSize: 13;
		          offset: -20 @ 0.
	verticalTick := RSVerticalTick new integer doNotUseNiceLabel 
		                 fontSize: 8.
	self resetRecords