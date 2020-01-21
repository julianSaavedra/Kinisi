specs
defaultSpec

	^SpecColumnLayout composed
		newRow:[:row |
			row
				add: #nameLabel left: 0 right: 0.9;
				add: #name left: 0.1 right: 0.5;
				add: #color left: 0.5 right: 0] height: 20;
		add: #mass height: 25;
		add: #position height: 75;
		add: #velocity height: 75;
		add: #acceleration height: 75;
		yourself