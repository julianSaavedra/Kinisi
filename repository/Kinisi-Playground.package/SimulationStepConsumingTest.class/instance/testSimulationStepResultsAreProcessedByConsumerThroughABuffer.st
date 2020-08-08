tests
testSimulationStepResultsAreProcessedByConsumerThroughABuffer

	| simulation simulationStepResults endPointConsumer buffer reader bufferWriterConsumer |
	simulationStepResults := OrderedCollection new.
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | simulationStepResults add: simulationStep value ].
	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [:data | endPointConsumer process: data ].
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: bufferWriterConsumer.
		
	simulation run.
	reader read; read; read.

	self assert: simulationStepResults asArray equals: #(0 1 2)