specs
defaultSpec

	| orientation |
	orientation := SpBoxLayout newHorizontal.
	orientation
		spacing: 12;
		add: 'Orientation' width: 55;
		add: #orientation width: 125.

	^SpBoxLayout newVertical
		spacing: 5;
		add: #forceModule height: 25;
		add: orientation height: 25;			
		yourself 