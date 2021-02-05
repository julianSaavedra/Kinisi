private
updateSelectedParticleObservation

	particleList selectedItems
		ifEmpty: [ self resetSelectedParticle ]
		ifNotEmpty:[:selectedParticles | self setSelectedParticleWith: selectedParticles first].
	self update