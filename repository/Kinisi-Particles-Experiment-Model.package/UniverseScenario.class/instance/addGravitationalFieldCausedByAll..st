configuring
addGravitationalFieldCausedByAll: particles
 
	particles do: [:particle | (self particles includes: particle) ifFalse: [ ExperimentError signal: 'Particle is not part of this universe' ]].
	gravitationalSpecification := GravitationalInteractionWithGravityFields causedByAll: particles