initialization
initializeWidgets

	super initializeWidgets.
	saveButton := self newButton.
	saveButton label: 'Save'.
	saveButton action: [ particleDraft save. saveAction value. self window close ].
	cancelButton := self newButton.
	cancelButton label: 'Cancel'.
	cancelButton action: [ self window close ]
	