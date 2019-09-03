initialization
initializePresenter

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton action: [ self removeButtonPostAction ].
	resetButton whenActionPerformedDo: [ self resetButtonPostAction ].
	particleDraftList
		whenSelectedItemChanged: [ :selection | self updateSelectedParticleDraft ]