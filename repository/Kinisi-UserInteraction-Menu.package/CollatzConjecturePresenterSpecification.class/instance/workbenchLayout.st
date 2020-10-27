settings
workbenchLayout

	^SpBoxLayout newVertical
		spacing: 10;
		add: #scenario height: 150;
		add: #stepping  withConstraints: [:constraints |
			constraints spec: #horizontalSpec; height: 25];
		add: #observation withConstraints: [:constraints |
			constraints spec: #horizontalSpec; expand: true; fill: true; padding: 5];
		yourself