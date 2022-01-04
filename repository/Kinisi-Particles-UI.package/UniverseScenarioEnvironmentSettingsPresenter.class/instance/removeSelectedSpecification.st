menu - action
removeSelectedSpecification

	self withSelectedChangeSpecificationDo: [:selectedSpecification |
		self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
			selectedParticle remove: selectedSpecification ] ]