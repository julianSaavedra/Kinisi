accessing
result

	| gravitationalConstant distanceVector squaredDistance |
	gravitationalConstant := UnitProvider soleInstance gravitationalConstantUnit with: 6.674e-11. 
	distanceVector := causingParticle position - overParticle position.
	squaredDistance := distanceVector norm * distanceVector norm.
	^distanceVector normalized
		* ( gravitationalConstant * causingParticle mass * overParticle mass
				/ squaredDistance )