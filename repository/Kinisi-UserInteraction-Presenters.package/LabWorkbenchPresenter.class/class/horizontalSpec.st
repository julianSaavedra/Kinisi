specs
horizontalSpec

	^SpBoxLayout newHorizontal
		add: #scenario expand: true fill: true padding: 5;
		add: #observation withConstraints: [ :constraints |
			constraints width: 300.
			constraints spec: #verticalSpec ];
		yourself