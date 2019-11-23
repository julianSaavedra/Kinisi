tests
testObservationCannotBeAddedTwoParticleStatesWithTheSameName

	| universeObservation particleObservationA anotherParticleObservationA |
	universeObservation := UniverseObservation new.
	particleObservationA := ParticleObservation forParticleNamed: 'ParticleA'.
	anotherParticleObservationA := ParticleObservation forParticleNamed: 'ParticleA'.
	
	universeObservation add: particleObservationA.
	
	self assert: particleObservationA particleName equals: anotherParticleObservationA particleName.
	self
		should: [universeObservation add: anotherParticleObservationA]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'