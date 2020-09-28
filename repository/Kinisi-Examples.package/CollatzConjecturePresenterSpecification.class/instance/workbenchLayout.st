as yet unclassified
workbenchLayout

	^SpBoxLayout newVertical
		add: #scenario height: 150;
		add: #observation withConstraints: [:constraints |
			constraints spec: #horizontalSpec; expand: true; fill: true; padding: 5];
		yourself