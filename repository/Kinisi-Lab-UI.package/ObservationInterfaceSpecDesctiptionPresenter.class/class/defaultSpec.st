specs
defaultSpec

	| descriptionLayout |
	descriptionLayout := SpBoxLayout newHorizontal.
	descriptionLayout
		spacing: 5;
		add: 'Description:' width: 55;
		add: #descriptionText.
	
	^SpBoxLayout newVertical
		add: descriptionLayout height: 40;
		yourself