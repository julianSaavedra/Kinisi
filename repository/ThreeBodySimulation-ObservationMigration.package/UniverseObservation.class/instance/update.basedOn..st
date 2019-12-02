as yet unclassified
update: currentParticleObservation basedOn: targetParticleObservation
 
	universeState := self
		newUniverseStateReplacing: currentParticleObservation particleState
		with: targetParticleObservation particleState.
	
	colorMapping removeKey: currentParticleObservation particleName.
	colorMapping at: targetParticleObservation particleName put: targetParticleObservation color.