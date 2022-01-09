specs
verticalSpec

	| buttons |
	buttons := SpBoxLayout newHorizontal
		add: #addDefinition;
		add: #removeDefinition;
		add: #removeAllDefinitions;
		yourself.
	^SpBoxLayout newVertical
		add: buttons height: 30;
		add: #definitions height: 150;
		add: #selectedDefinition expand: true fill: true padding: 5;
		yourself