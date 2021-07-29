specs
defaultSpec

	^SpBoxLayout newHorizontal
		beNotHomogeneous;
		borderWidth: 5;
		spacing: 5;
		add: self scenarioConfigurationLayout width: 250;
		add: #scenarioView;
		yourself