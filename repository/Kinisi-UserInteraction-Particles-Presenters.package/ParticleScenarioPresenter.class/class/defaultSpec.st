specs
defaultSpec

	^ SpBoxLayout newVertical
		add: #properties height: 300;
		add: #view expand: true fill: true padding: 5;
		yourself