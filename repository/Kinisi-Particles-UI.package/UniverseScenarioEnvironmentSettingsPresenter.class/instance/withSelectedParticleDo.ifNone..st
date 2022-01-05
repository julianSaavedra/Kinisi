private
withSelectedParticleDo: selectedParticleBlock ifNone: noSelectedParticleBlock

	particleList selectedItems
		ifEmpty: noSelectedParticleBlock
		ifNotEmpty: [:selectedParticles | selectedParticleBlock value: selectedParticles first ]