initialization
initializeParticleDraftList

	particleDraftList := self newList.
	particleDraftList 	displayBlock: [:particle | particle particleName ].
	self setParticleDraftListItemsFromUniverse