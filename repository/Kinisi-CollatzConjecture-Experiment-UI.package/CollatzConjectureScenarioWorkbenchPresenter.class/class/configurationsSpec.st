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
				beHorizontalAlignmentEnd ];
		add: 'Color' at: 1 @ 2;
		add: #color
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 2;
				beHorizontalAlignmentEnd ];
		add: 'Size' at: 1 @ 3;
		add: #size
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 3;
				beHorizontalAlignmentEnd ];
		add: 'Font' at: 1 @ 4;
		add: #font
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 4;
				beHorizontalAlignmentEnd ];
		add: 'Background' at: 1 @ 5;
		add: #background
			withConstraints: [ :constraints | 
			constraints
				position: 2 @ 5;
				beHorizontalAlignmentEnd ];
		yourself