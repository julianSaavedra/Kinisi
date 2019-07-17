validation
assertParticleName: aPhysicalState

	name = aPhysicalState particleName ifFalse: [ PhysicsModelError signal: 'Particle cannot be updated from another particle''s physical state' ]