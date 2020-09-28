specs
horizontalSpec

	| pane buttons |

	buttons := SpBoxLayout newVertical
		add: #addDefinition height: 25;
		add: #removeDefinition height: 25;
		add: #removeAllDefinitions height: 25;
		yourself.

	pane := SpPanedLayout newHorizontal
		add: #definitions;
		add: #selectedDefinition;
		yourself.

	^SpBoxLayout newHorizontal
		add: buttons expand: false;
		add: pane withConstraints: [ :contraints | contraints padding: 5 ];
		yourself