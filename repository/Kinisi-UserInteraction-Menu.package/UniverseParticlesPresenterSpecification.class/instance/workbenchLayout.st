settings
workbenchLayout

	| auxiliaryWorkbenchs |
	auxiliaryWorkbenchs := SpBoxLayout newVertical.
	auxiliaryWorkbenchs
		add: #stepping height: 120;
		add: #observation;
		yourself.
		
	^SpBoxLayout newHorizontal
		add: #scenario expand: true fill: true padding: 5;
		add: auxiliaryWorkbenchs width: 300;
		yourself