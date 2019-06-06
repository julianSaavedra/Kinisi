examples
examplePositionVelocityAndAccelerationInTimeOfParticle

	| rawTimeStateResults colorNormalizer formatedData inputArray grapher valuesToGraph |
	"Preparing the data"
	rawTimeStateResults := self timeAndPhysicalStateAssociations.
	valuesToGraph := #(#position #velocity #acceleration).
	grapher := RTGrapher new.
	colorNormalizer := RTMultiLinearColorForIdentity new objects: (1 to: rawTimeStateResults size).
	valuesToGraph withIndexDo: [:valueToGraph :index |
		| color |
		inputArray := rawTimeStateResults collect: [:timeStateAssociation |
			Array
				with: timeStateAssociation key amount
				with: timeStateAssociation value particleName
				with: (timeStateAssociation value perform: valueToGraph) y amount ].
		formatedData := RTData new.
		formatedData points: inputArray.
		formatedData label: valueToGraph asString.
		formatedData interaction fixedPopupText: [:row | '<1s>' expandMacrosWith: row value third asString ].
		color := colorNormalizer rtValue: index.
		formatedData dotShape ellipse
			color: (color alpha: 0.3);
	 		size: [:row | 20 ].
		formatedData connectColor: color.
		formatedData y: [:row | row third ].
		formatedData x: [:row | row first ].
		grapher add: formatedData].

	grapher axisX numberOfTicks: inputArray size.
	grapher axisX title: 'Time'.
	grapher axisX decimal: 5.
	grapher axisY numberOfTicks: inputArray size.
	grapher axisY title: 'Y component'.
	grapher axisY decimal: 5.
		
	grapher legend addText: 'Y component'.
	grapher inspect