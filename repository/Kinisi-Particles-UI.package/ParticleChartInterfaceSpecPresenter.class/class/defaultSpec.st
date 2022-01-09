specs
defaultSpec

	| options settings |
	options := SpBoxLayout newHorizontal.
	options
		spacing: 5;
		add: 'Property:' width: 50;
		add: #property width: 100;
		add: 'Dimension:' width: 50;
		add: #dimension width: 50;
		add: 'Plot Type:' width: 50;
		add: #plotType width: 100.
	settings := SpBoxLayout newHorizontal.
	settings
		spacing: 5;
		add: 'Settings' width: 50;
		add: options.
	
	^SpBoxLayout newVertical
		spacing: 5;
		add: #description height: 60;
		add: settings height: 20;
		yourself