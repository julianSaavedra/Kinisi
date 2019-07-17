updating
updateParticleWith: aPhysicalState

	particles
		detect: [:aParticle | aParticle name = aPhysicalState particleName ]
		ifFound: [:particle | particle updateWith: aPhysicalState ]
		ifNone: [PhysicsModelError signal: ('Universe does not contain particle named ''<1s>''' expandMacrosWith: aPhysicalState particleName) ]