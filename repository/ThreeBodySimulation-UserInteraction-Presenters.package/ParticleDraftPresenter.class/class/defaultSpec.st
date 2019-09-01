specs
defaultSpec

	^SpecRowLayout composed
		newColumn: [:measuresColumn |
			measuresColumn
				newRow:[:row |
					row
						add: #nameLabel left: 0 right: 0.9;
						add: #name left: 0.1 right: 0.45;
						add: #colorLabel left: 0.55 right: 0.35;
						add: #color left: 0.65 right: 0] height: 20;
				add: #mass height: 25;
				add: #position height: 75;
				add: #velocity height: 75;
				add: #acceleration height: 75];
		add: #view;
		yourself