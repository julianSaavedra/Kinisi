tests
testSimulationStepResultsAreProcessedByConsumerThroughABuffer

	| simulation simulationStepResults endPointConsumer buffer reader bufferWriterConsumer |
	simulationStepResults := OrderedCollection new.
	endPointConsumer := SimulationStepPluggableConsumer do: [:simulationStep | simulationStepResults add: simulationStep value ].
	buffer := Buffer new.
	reader := BufferPluggableReader on: buffer withDataDo: [:data | endPointConsumer process: data ].
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	
	simulation := self simulationInformingStepsTo: bufferWriterConsumer.
	simulation run.
	reader read; read; read.

	self assert: simulationStepResults asArray equals: #(0 1 2)