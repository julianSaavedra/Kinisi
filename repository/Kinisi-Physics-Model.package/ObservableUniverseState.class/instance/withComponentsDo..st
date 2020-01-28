accessing
withComponentsDo: aBlock
 
	self particles do: [:particle | aBlock value: particle ]