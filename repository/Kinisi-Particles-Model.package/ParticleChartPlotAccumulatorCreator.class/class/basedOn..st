instance creation
basedOn: chartInterfaceSpec
 
	| particlePlotProvider |
	particlePlotProvider :=  chartInterfaceSpec plotType accept: self.
	^self new initializeWith: particlePlotProvider