settings
workbenchLayout

	| scenarioAndStepping |
	scenarioAndStepping := SpBoxLayout newHorizontal
		spacing: 10;
		add: #scenario;
		add: #stepping withConstraints: [:constraints |
			constraints spec: #verticalSpec; expand: false];
		yourself.

	^SpBoxLayout newVertical
		spacing: 10;
		add: scenarioAndStepping;
		add: #observation withConstraints: [:constraints |
			constraints spec: #horizontalSpec; expand: true; fill: true; padding: 5];
		yourself