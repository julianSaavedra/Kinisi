specs
defaultSpec

	^SpBoxLayout newVertical
		add: #scenario withConstraints: [:constraints | constraints expand: true; fill: true; padding: 5 ];
		add: #observation withConstraints: [:constraints | constraints expand: true; fill: true; padding: 5 ];
		yourself