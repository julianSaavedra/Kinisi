asserting
assertTenTimesThatParticlesAreCreatedWithDifferent: accessor

	10 timesRepeat: [
		| existingParticles existingPropertyValues newParticle |
		existingParticles := workbench scenario particles.
		existingPropertyValues := existingParticles collect: accessor.
		newParticle := workbench newParticle.
		self deny: (existingPropertyValues includes: newParticle particleName) ]