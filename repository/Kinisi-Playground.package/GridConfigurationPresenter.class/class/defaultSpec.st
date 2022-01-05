specs
defaultSpec

	^SpecColumnLayout composed
		newRow: [:row | row add: #color; add: #size] height: 20;
		add: #distance;
		yourself