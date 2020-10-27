specs
defaultSpec

	| basic |
	basic := SpBoxLayout newHorizontal
		add: #name expand: true fill: true padding: 5;
		add: #color width: 100;
		add: #visibility width: 60;
		yourself.

	^SpBoxLayout newVertical
		spacing: 1;
		beNotHomogeneous;
		add: basic height: 30;
		add: #mass height: 27;
		add: #position height: 80;
		add: #velocity height: 80;
		add: #acceleration height: 80;
		yourself