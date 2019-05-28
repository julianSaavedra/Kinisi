instance creation
overParticleWith: aPhysicalState causedByParticleWith: anotherPhysicalState

	self assert: aPhysicalState isNotTheSameAs: anotherPhysicalState.
	self assert: aPhysicalState isNotInTheTheSamePositionAs: anotherPhysicalState.
	^self new initializeOverParticleWith: aPhysicalState causedByParticleWith: anotherPhysicalState