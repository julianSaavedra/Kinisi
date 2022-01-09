specs
horizontalSpec

	| buttons |
	buttons := SpBoxLayout newVertical
		add: #addDefinition height: 25;
		add: #removeDefinition height: 25;
		add: #removeAllDefinitions height: 25;
		yourself.
		
	^SpBoxLayout newHorizontal
		add: buttons expand: false;
		add: buttons height: 30;
		add: #definitions width: 50;
		add: #selectedDefinition expand: true fill: true padding: 5;
		yourself