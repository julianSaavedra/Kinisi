accessing
withComponentsDo: aBlock
 
	self physicalStates do: [:aPhysicalState | aBlock value: aPhysicalState ]