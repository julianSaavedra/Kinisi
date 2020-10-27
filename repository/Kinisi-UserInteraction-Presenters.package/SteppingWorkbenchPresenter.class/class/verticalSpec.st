specs
verticalSpec

	^ SpBoxLayout newVertical
		spacing: 5;
		add: #delta height: 27;
		add: #modeList height: 25;
		add: #selectedMode;
		yourself