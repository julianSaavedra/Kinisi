as yet unclassified
interfacesBasedOn: scenario
 
	^interfaceDefinitions collect: [:definition |
		definition interfaceBasedOn: scenario ]