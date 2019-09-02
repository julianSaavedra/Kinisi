initialization
updateParticleDraftPresenterWith: selection

	^selection
		ifNotNil: [
			selectedParticleDraft := self
				instantiate: ParticleDraftPresenter
				on: selection.
			self needRebuild: false.
			self buildWithSpecLayout: self class defaultSpec.
			particleDraftList setSelectedItem: selection]