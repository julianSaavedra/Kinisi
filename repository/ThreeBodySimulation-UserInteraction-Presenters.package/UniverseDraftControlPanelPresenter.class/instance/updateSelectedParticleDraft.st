private
updateSelectedParticleDraft

	particleDraftList selectedItem
		ifNil:[ self resetSelectedParticleDraft ]
		ifNotNil: [:selection |
			selectedParticleDraft := self instantiate: ParticleDraftPresenter on: selection.
			selectedParticleDraft onChangeDo: universeDraftUpdateAction.
			self buildSpecAgain.
			particleDraftList setSelectedItem: selection]