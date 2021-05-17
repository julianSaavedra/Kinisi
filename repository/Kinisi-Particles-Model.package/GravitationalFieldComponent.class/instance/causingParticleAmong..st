private
causingParticleAmong: particles
 
	^particles detect: [:particle | particle particleName = fieldCausingParticleName ]