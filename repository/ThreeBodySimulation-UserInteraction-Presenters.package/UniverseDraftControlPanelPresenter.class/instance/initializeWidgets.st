initialization
initializeWidgets

	addButton := self newButton.
	addButton label: 'Add'.
	addButton action: [ universeDraft newParticleObservationDraft ].
	resetButton := self newButton.
	resetButton label: 'Reset'.
	resetButton action: [ universeDraft reset ].
	particleDraftList := self newList.
	particleDraftList
		items: universeDraft particleDrafts;
		displayBlock: [:particleDraft | particleDraft particleName ].
	selectedParticleDraft := self instantiate: RoassalModel.
	
	self focusOrder add: addButton; add: resetButton; add: particleDraftList