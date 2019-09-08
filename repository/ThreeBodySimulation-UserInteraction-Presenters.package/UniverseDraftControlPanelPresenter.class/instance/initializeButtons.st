initialization
initializeButtons

	addButton := self newButton.
	addButton label: 'Add'.
	addButton action: [ universeDraft newParticleObservationDraft ].
	removeButton := self newButton.
	removeButton label: 'Remove'.
	resetButton := self newButton.
	resetButton label: 'Reset'.
	resetButton action: [ universeDraft reset ]