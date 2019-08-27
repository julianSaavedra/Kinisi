specs
defaultSpec

	^SpecLayout composed
		newRow: [:row | row add: #name left: 0 right: 0.9 ; add: #amount left: 0.1 right: 0.45; add: #unit left: 0.55 right: 0 ] height: 20;
		yourself