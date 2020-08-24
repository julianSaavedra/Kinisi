accessing
interfacesBasedOn: scenario
 
	^interfaceDefinitions collect: [:definition |
		definition interfaceBasedOn: scenario ]