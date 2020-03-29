specs
defaultSpec

	^SpecColumnLayout composed
		add: #background;
		add: #zoom;
		add: #scale;
		newRow: [:row | row add: #gridVisibility; add: #gridColor ] height: 20;
		yourself
		