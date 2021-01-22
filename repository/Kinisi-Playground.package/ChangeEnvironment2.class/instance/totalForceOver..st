calculation
totalForceOver: particle
 
	^componentsMap
		at: particle particleName
		ifPresent: [:particleComponents | particleComponents sum: [:component | component forceFor: particle ] ]
		ifAbsent: [ PhysicsTestResource new nullForce ]