examples - curves
examplePositionVelocityAndAccelerationInTimeOfParticle

	| rawTimeStateResults colorNormalizer formatedData inputArray grapher valuesToGraph |
	"Preparing the data"
	rawTimeStateResults := self particleAttractedByEarthSimulationResult.
	"Each diferent curves that are going to be drawn"
	valuesToGraph := #(#position #velocity #acceleration).
	grapher := RTGrapher new.
	"Color 'feeder' - it's provides a given number of colors"
	colorNormalizer := RTMultiLinearColorForIdentity new objects: (1 to: valuesToGraph size).
	valuesToGraph withIndexDo: [:valueToGraph :index |
		| color |
		"Creation of each 'curve' (values + format)"
		inputArray := rawTimeStateResults withTimeAndStateCollect: [:time :state |
			Array "Now it is an array; think of modelling like a 'curve point'"
				with: time amount
				with: state particleName
				with: (state perform: valueToGraph) y amount ].
		formatedData := RTData new.
		formatedData points: inputArray.
		"Label would be shown in the graph together with the curve color"
		formatedData label: valueToGraph asString.
		"It defines What happens when the mouse goes over each line of the curve"
		formatedData interaction fixedPopupText: [:row | '<1s>' expandMacrosWith: row value third asString ].
		color := colorNormalizer rtValue: index.
		formatedData dotShape ellipse
			color: (color alpha: 0.3);
	 		size: [:row | 20 ]. "I could not determine what happened when I change the value of size"
		formatedData connectColor: color.
		"Definition of how to obtain the x and y value of each curve point"
		formatedData y: [:row | row third ].
		formatedData x: [:row | row first ].
		grapher add: formatedData].

	"Configuration of each axis (number of points / ticks, Title, how many decimals to show, etc)"
	grapher axisX numberOfTicks: inputArray size.
	grapher axisX title: 'Time'.
	grapher axisX decimal: 5.
	grapher axisY numberOfTicks: inputArray size.
	grapher axisY title: 'Y component'.
	grapher axisY decimal: 5.
	"Legend of box displaying each curve label and color"
	grapher legend addText: 'Y component'.
	grapher inspect