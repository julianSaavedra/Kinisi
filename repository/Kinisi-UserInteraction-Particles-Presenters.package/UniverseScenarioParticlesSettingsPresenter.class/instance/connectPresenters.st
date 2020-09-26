initialization
connectPresenters

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton whenActionPerformedDo: [ self removeButtonPostAction ].
	removeAllButton
		whenActionPerformedDo: [ self removeAllButtonPostAction ].
	particleObservationList
		whenSelectionChangedDo: [ :selection | 
			[ :selection | self updateSelectedParticleObservation ]
				cull: selection selectedItem ]