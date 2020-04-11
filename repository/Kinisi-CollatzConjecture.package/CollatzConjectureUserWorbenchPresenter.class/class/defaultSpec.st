specs
defaultSpec

	^SpBoxLayout newHorizontal
		add: #initialState expand: true;
		add: #play expand: false;
		add: #lastResult expand: false;
		yourself