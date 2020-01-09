initialization
initializeButtons

	addButton := self newButton.
	addButton label: 'Add'.
	addButton action: [
		| draftPresenter |
		draftPresenter := (ParticleObservationDraftPresenter on: universeObservation newParticleObservationDraft).
		draftPresenter onDraftSaveDo: [ self addButtonPostAction ].
		draftPresenter openWithSpec ].
	removeButton := self newButton.
	removeButton label: 'Remove'.
	resetButton := self newButton.
	resetButton label: 'Reset'.
	resetButton action: [ universeObservation reset ]