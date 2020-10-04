private
refillParticleObservationList

	| currentlySelectedItems selectedItemsToRestore |
	currentlySelectedItems := particleList selectedItems.
	particleList items: workbench scenario particles.
	particleList updateList.
	selectedItemsToRestore := currentlySelectedItems select: [:item | particleList items includes: item ].
	particleList selectItems: selectedItemsToRestore