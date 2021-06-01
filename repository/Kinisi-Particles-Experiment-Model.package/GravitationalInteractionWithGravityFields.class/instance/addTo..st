as yet unclassified
addTo: environmentBuilder
 
	| particles |
	particles := fieldCausingParticles collect: [:particle | particle particleState ].
	environmentBuilder addGravitationalFieldCausedByAll: particles