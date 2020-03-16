asserting
assertTenTimesThatParticlesAreCreatedWithDifferent: accessor

	| universeObservation |

	universeObservation := UniverseObservation new.
	10
		timesRepeat: [ | existingParticles existingPropertyValues lastParticle |

			existingParticles := universeObservation particles.
			existingPropertyValues := existingParticles collect: accessor.
			lastParticle := universeObservation newParticleObservation.
			self
				deny: (existingPropertyValues includes: lastParticle particleName) ]