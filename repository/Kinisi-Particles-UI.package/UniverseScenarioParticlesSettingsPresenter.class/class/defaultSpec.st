specs
defaultSpec

	| buttons particleListLayout |
	buttons := SpBoxLayout newHorizontal.
	buttons
		add: #addButton;
		add: #removeButton;
		add: #removeAllButton.
	particleListLayout := SpBoxLayout newVertical
		add: #particleList;
		yourself.
		
	^SpBoxLayout newVertical
		spacing: 3;
		add: buttons height: 30;
		add: particleListLayout height: 100;
		add: #selectedParticle expand: true fill: true padding: 5;
		yourself