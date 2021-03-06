examples - curves
examplePositionInTimeOfParticle

	| formatedData inputArray grapher |
	"Preparing the data"
	inputArray := self particleAttractedByEarthSimulationResult withTimeAndStateCollect: [:time :state |
		Array
			with: time amount
			with: state particleName
			with: state position x amount ].

	formatedData := RTData new.
	formatedData points: inputArray.
	formatedData label: 'Position [X component]'.
	formatedData interaction fixedPopupText: [:row |
		'Particle <1s> position at <2s> is <3s>'
			expandMacrosWith: row value second asString
			with: row value first asString
			with: row value third asString ].
	formatedData dotShape ellipse
		color: (Color blue alpha: 0.3);
	    size: [:row | 20 ].
	formatedData connectColor: Color blue.
	formatedData y: [:row | row third ].
	formatedData x: [:row | row first ].

	grapher := RTGrapher new.
	grapher add: formatedData.
	grapher axisX numberOfTicks: inputArray size.
	grapher axisX title: 'Time'.
	grapher axisX decimal: 5.

	grapher axisY numberOfTicks: inputArray size.
	grapher axisY title: 'Position [X component]'.
	grapher axisY decimal: 5.
	"grapher legend addText: 'Position [X component]'."
	grapher inspect