tests
testUniverseStateWithTwoParticleStatesIsCreatedFromObservationWhenTwoParticlesWereAdded

	| universeObservation particleObservationA particleObservationB physicalStates oneMeter oneMeterInAllComponentVector |
	universeObservation := UniverseObservation new.
	particleObservationA := ParticleObservation forParticleNamed: 'ParticleA'.
	particleObservationB := ParticleObservation forParticleNamed: 'ParticleB'.
	oneMeter := UnitProvider soleInstance meter with: 1. 
	oneMeterInAllComponentVector := MeasureVector x: oneMeter y: oneMeter z: oneMeter.
	particleObservationB := particleObservationB particlePosition: oneMeterInAllComponentVector.
	
	universeObservation
		add: particleObservationA;
		add: particleObservationB.
	
	physicalStates := universeObservation universeState physicalStates.
	self assert: physicalStates size equals: 2.
	self assert: (physicalStates includes: particleObservationA physicalState).
	self assert: (physicalStates includes: particleObservationB physicalState)