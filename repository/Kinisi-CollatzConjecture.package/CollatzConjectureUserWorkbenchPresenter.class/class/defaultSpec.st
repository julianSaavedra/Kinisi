specs
defaultSpec

	| settingsLayout |
	settingsLayout := SpBoxLayout newVertical.
	settingsLayout
		add: #initialState;
		add: #initialStateDisplaySettings;
		addLast: #monitoringSettings withConstraints: [:constraints | constraints padding: 10].
		
	^SpBoxLayout newHorizontal
		add: settingsLayout withConstraints: [:constraints | constraints padding: 5];
		addLast: #initialStateDisplay withConstraints: [:constraints | constraints width: 400];
		yourself