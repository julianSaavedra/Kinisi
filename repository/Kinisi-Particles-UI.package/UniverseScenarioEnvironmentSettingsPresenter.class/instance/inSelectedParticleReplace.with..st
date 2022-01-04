private
inSelectedParticleReplace: oldSpecification with: newSpecification

	self withSelectedParticleDo: [:particle |
		 particle replace: oldSpecification with: newSpecification ].
	self updateSelectedParticleChangeSpecifications.
	selectedParticleChangeSpecifications selectItem: newSpecification