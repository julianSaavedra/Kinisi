specs
defaultSpec

	^SpecColumnLayout composed
		newRow: [:row |
			row
				add: #simulationConfiguration;
				addSplitter;
				add: #monitoringFlag;
				addSplitter;
				add:#start] height: 50;
		add: #initialState;
		yourself