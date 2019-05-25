utilities
particleNamed: aName in: position with: mass
	
	^Particle
		named: aName
		with: (self physicalStateWith: position and: mass)