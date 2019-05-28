instance creation
overParticleWith: aPhysicalState causedByParticlesWithAll: physicalStates

	self assert: aPhysicalState isNotIncludedWithin: physicalStates.
	^self new initializeOver: aPhysicalState causedByAll: physicalStates