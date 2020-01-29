specs
defaultSpec

	^SpecColumnLayout composed
		add: #draftObservation;
		newRow: [:row | row add: #saveButton; add: #cancelButton ] height: 30;
		yourself