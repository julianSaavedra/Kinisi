instance creation
overParticleWith: aPhysicalState causedByParticlesWithAll: physicalStates

	self assert: aPhysicalState isNotIncludedWithin: physicalStates.
	^self new overParticleWith: aPhysicalState causedByParticlesWithAll: physicalStates