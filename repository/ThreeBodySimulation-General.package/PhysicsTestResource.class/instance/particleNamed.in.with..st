not used
particleNamed: aName in: position with: mass
	
	^Particle
		named: aName
		with: (self physicalStateForParticleNamed: aName with: mass in: position)