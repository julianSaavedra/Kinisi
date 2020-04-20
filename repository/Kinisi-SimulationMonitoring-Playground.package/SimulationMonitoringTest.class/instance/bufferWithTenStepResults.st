test objects
bufferWithTenStepResults

	| buffer |
	buffer := Buffer new.
	1 to: 10 do: [:data | buffer store: (SimulationStepResultPackage with: data)].
	
	^buffer