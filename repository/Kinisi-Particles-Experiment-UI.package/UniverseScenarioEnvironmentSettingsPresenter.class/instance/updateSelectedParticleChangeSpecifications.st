private
updateSelectedParticleChangeSpecifications

	self
		withSelectedParticleDo: [:selectedParticle | self updateSelectedParticleChangeSpecificationsFor: selectedParticle ]
		ifNone: [
			self cleanSelectedParticleChangeSpecifications.
			self cleanSelectedChangeSpecification ].
	self update