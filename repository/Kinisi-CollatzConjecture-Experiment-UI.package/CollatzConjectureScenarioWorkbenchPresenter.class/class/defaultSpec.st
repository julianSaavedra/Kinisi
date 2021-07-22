specs
defaultSpec

	^SpBoxLayout newHorizontal
		beNotHomogeneous;
		borderWidth: 5;
		spacing: 5;
		add: self scenarioConfigurationLayout;
		add: #scenarioView;
		yourself