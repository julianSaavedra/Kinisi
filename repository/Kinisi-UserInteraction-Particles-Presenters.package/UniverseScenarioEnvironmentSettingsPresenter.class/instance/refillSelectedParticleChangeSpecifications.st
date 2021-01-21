private
refillSelectedParticleChangeSpecifications

	self withSelectedParticleDo: [:selectedParticle |
		| currentlySelectedItems selectedItemsToRestore |
		currentlySelectedItems := selectedParticleChangeSpecifications selectedItems.
		selectedParticleChangeSpecifications items: selectedParticle changeSpecifications.
		selectedParticleChangeSpecifications updateList.
		selectedItemsToRestore := currentlySelectedItems select: [:item | selectedParticleChangeSpecifications items includes: item ].
		selectedParticleChangeSpecifications selectItems: selectedItemsToRestore ]