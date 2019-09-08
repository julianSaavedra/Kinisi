initialization
initializeParticleDraftList

	particleDraftList := self newList.
	particleDraftList 	displayBlock: [ :particleDraft | particleDraft particleName ].
	self setParticleDraftListItemsFromUniverse