specs
defaultSpec

	| buttons |
	buttons := SpBoxLayout newHorizontal.
	buttons
		add: #addButton;
		add: #removeButton;
		add: #removeAllButton.
		
	^SpBoxLayout newVertical
		spacing: 3;
		add: buttons height: 30;
		add: #particleObservationList height: 100;
		add: #selectedParticleObservation expand: true fill: true padding: 5;
		yourself