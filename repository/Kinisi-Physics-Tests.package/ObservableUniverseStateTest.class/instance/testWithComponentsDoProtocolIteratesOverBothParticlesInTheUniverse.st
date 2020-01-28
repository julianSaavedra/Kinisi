tests
testWithComponentsDoProtocolIteratesOverBothParticlesInTheUniverse

	| particles universe componentsIteratedOver |
	particles := self twoParticles.
	universe := ObservableUniverseState withAll: particles.
	componentsIteratedOver := OrderedCollection new.
	
	universe withComponentsDo: [:physicalState |
		componentsIteratedOver add: physicalState ].
	
	self assert: (componentsIteratedOver includesAll: particles).
	self assert: componentsIteratedOver size equals: 2