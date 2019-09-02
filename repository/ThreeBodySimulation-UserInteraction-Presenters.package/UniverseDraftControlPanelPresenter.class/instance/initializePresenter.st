initialization
initializePresenter

	addButton whenActionPerformedDo: [
		| previousSelectedItem |
		previousSelectedItem := particleDraftList selectedItem.
		particleDraftList items: universeDraft particleDrafts.
		previousSelectedItem ifNil: [ particleDraftList updateList ]].
	
	resetButton whenActionPerformedDo: [ particleDraftList items: universeDraft particleDrafts ].
	particleDraftList whenSelectedItemChanged: [:selection | self updateParticleDraftPresenterWith: selection ]