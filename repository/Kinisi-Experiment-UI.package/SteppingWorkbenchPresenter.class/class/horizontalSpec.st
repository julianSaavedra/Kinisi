specs
horizontalSpec

	^SpBoxLayout newHorizontal
		spacing: 5;
		add: #delta width: 100;
		add: #modeList width: 200;
		add: #selectedMode;
		yourself