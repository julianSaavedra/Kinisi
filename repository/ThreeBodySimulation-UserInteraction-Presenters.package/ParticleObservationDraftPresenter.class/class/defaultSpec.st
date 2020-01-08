specs
defaultSpec

	^SpecColumnLayout composed
		add: #properties height: 270;
		add: #view;
		newRow: [:row | row add: #saveButton; add: #cancelButton ] height: 30;
		yourself