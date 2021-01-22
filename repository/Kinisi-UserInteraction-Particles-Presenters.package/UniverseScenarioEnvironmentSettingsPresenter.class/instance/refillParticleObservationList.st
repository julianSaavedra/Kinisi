private
refillParticleObservationList

	| currentlySelectedItems selectedItemsToRestore |
	currentlySelectedItems := particleList selectedItems.
	particleList items: workbench scenario particles.
	selectedItemsToRestore := currentlySelectedItems select: [:item | particleList items includes: item ].
	particleList selectItems: selectedItemsToRestore