specs
defaultSpec
		
	^SpBoxLayout newHorizontal
		add: #name expand: false;
		add: #amount expand: true fill: true padding: 5;
		add: #unit width: 160;
		yourself