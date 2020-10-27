specs
verticalSpec

	| buttons |
	buttons := SpBoxLayout newHorizontal
		add: #addDefinition;
		add: #removeDefinition;
		add: #removeAllDefinitions;
		yourself.
		
	"pane := SpPanedLayout newHorizontal
		add: #definitions;
		add: #selectedDefinition;
		yourself."

	^SpBoxLayout newVertical
		add: buttons height: 30;
		add: #definitions height: 200;
		add: #selectedDefinition expand: true fill: true padding: 5;
		yourself