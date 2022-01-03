tests
testNewDraftIsCreatedWithGivenNameAndPositionAndWithDefaultValues

	| draft |
	draft := ParticleObservationDraft
		withName: 'ParticleA'
		position: testResource oneMeterInAllComponentsVector
		insideOf: UniverseObservationDraft new.
	
	self assert: draft particleName equals: #ParticleA.
	self assert: draft position equals: testResource oneMeterInAllComponentsVector.
	self assert: draft color equals: Color red.
	self assert: draft mass equals: testResource oneKilogram.
	self assert: draft velocity equals: testResource nullVelocity.
	self assert: draft acceleration equals: testResource nullAcceleration