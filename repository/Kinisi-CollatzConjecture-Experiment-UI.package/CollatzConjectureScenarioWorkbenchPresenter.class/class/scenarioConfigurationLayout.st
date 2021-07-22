specs
scenarioConfigurationLayout

	^SpGridLayout new
		beColumnNotHomogeneous;
		beRowNotHomogeneous;
		borderWidth: 2;
		column: 1 withConstraints: [ :constraints | constraints beNotExpand ];
		"row: 1 withConstraints: [ :constraints | constraints beNotExpand ];"
		column: 2 withConstraints: [ :constraints | constraints beNotExpand ];
"		row: 2 withConstraints: [ :constraints | constraints beNotExpand ];"
		add: 'State' at: 1 @ 1;
		add: #state at: 2 @ 1;
		add: 'Color' at: 1 @ 2;
		add: #color at: 2 @ 2;
		add: 'Size' at: 1 @ 3;
		add: #size at: 2 @ 3;
		add: 'Font' at: 1 @ 4;
		add: #font at: 2 @ 4;
		add: 'Background' at: 1 @ 5;
		add: #background at: 2 @ 5;
		yourself