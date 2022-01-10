private
forceOver: particle causedBy: causingParticles

	^ particle velocity isZero
		  ifTrue: [ self nullForce ]
		  ifFalse: [ self forceOver: particle ]