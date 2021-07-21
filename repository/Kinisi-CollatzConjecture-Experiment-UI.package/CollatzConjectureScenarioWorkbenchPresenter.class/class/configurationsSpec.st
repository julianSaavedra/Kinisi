specs
configurationsSpec

	^SpGridLayout new
		beColumnNotHomogeneous;
		rowSpacing: 5;
		column: 1
			withConstraints: [ :constraints | constraints beNotExpand ];
		add: 'State' at: 1 @ 1;
		add: #state
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 1;
				hAlignEnd ];
		add: 'Color' at: 1 @ 2;
		add: #color
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 2;
				hAlignEnd ];
		add: 'Size' at: 1 @ 3;
		add: #size
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 3;
				hAlignEnd ];
		add: 'Font' at: 1 @ 4;
		add: #font
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 4;
				hAlignEnd ];
		add: 'Background' at: 1 @ 5;
		add: #background
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 5;
				hAlignEnd ];
		yourself