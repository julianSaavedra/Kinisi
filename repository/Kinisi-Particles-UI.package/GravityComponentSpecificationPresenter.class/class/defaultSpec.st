specs
defaultSpec

	^SpBoxLayout newVertical
		add: 'Gravity Specification' asText allBold height: 25;
		add: #modeSelection height: 25;
		add: #mode;
		yourself