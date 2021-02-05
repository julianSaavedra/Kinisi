specs
verticalSpec

	^SpBoxLayout newVertical
		add: #scenario expand: false;
		add: #observation withConstraints: [:constraints |
			constraints spec: #horizontalSpec; expand: true; fill: true; padding: 5];
		yourself