tests
testObservationCannotBeAddedTwoParticleStatesWithTheSamePosition

	| universeObservation particleObservationA particleObservationB |
	universeObservation := UniverseObservation new.
	particleObservationA := ParticleObservation forParticleNamed: 'ParticleA'.
	particleObservationB := ParticleObservation forParticleNamed: 'ParticleB'.
	
	universeObservation add: particleObservationA.
	
	self assert: particleObservationA particlePosition equals: particleObservationB particlePosition.
	self
		should: [universeObservation add: particleObservationB]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'