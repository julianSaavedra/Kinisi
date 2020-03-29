specs
defaultSpec

	^SpecColumnLayout composed
		add: #background height: 30;
		add: #zoom height: 30;
		add: #scale height: 30;
		newRow: [:row | row add: #gridVisibility width: 70 ; add: #gridColor ] height: 30;
		addSplitter;
		yourself
		