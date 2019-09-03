private
updateSelectedParticleDraft

	particleDraftList selectedItem
		ifNil:[ self resetSelectedParticleDraft ]
		ifNotNil: [:selection |
			selectedParticleDraft := self instantiate: ParticleDraftPresenter on: selection.
			self buildSpecAgain.
			particleDraftList setSelectedItem: selection]