specs
defaultSpec

	^SpGridLayout new
		beColumnHomogeneous;
		rowSpacing: 5;
		add: 'Color' at: 1@1;
		add: #color withConstraints: [:constraints | 
			constraints
				position: 2@1;
				beHorizontalAlignmentEnd ];
		add: 'Size' at: 1@2;
		add: #size withConstraints: [:constraints | 
			constraints
				position: 2@2;
				beHorizontalAlignmentEnd ];
		add: 'Font' at: 1@3;
		add: #font withConstraints: [:constraints | 
			constraints
				position: 2@3;
				beHorizontalAlignmentEnd ];
		
		add: 'Background' at: 1@4;
		add: #background withConstraints: [:constraints | 
			constraints
				position: 2@4;
				beHorizontalAlignmentEnd ];
		yourself 
	
	