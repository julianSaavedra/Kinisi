tests
testWithComponentsDoProtocolIteratesOverBothPhysicalStatesInTheUniverseState

	| physicalStates universe componentsIteratedOver |
	physicalStates := self twoPhysicalStatesCollection.
	universe := ObservableUniverseState with: physicalStates.
	componentsIteratedOver := OrderedCollection new.
	
	universe withComponentsDo: [:physicalState |
		componentsIteratedOver add: physicalState ].
	
	self assert: (componentsIteratedOver includesAll: physicalStates).
	self assert: componentsIteratedOver size equals: 2