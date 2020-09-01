test - consumer
testSimulationStepsAreConsumeByGivenConsumer

	| simulationStepResults consumer steppingDefinition simulation plusOneChange |
	steppingDefinition := SteppingDefinition repeat: 5.
	plusOneChange := self plusOne.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: plusOneChange.
	
	simulationStepResults := OrderedCollection new.
	consumer := SimulationStepPluggableConsumer processWith: [:simulationStep | simulationStepResults add: simulationStep value].
	
	simulation runInforming: consumer.

	self assert: simulationStepResults size equals: 6.
	0 to: 5 do: [:expectedResult | 
		self assert: (simulationStepResults includes: expectedResult)]
