private
causingParticlesAmong: particles
 
	^(particles select: [:particle | fieldCausingParticlesNames includes: particle particleName ])
		asOrderedCollection