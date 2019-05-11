as yet unclassified
result

	^causingParticles
		inject: (MeasureVector nullWith: UnitProvider soleInstance newton)
		into: [:netForce :aParticle | 	
				netForce + (Interaction over: overParticle causedBy: aParticle) result ]