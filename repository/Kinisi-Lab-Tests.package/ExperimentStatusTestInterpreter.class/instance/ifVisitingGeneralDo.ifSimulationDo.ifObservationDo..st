private
ifVisitingGeneralDo: generalBlock ifSimulationDo: simulationBlock ifObservationDo: observationBlock

	visitingStatus = #General ifTrue: generalBlock.
	visitingStatus = #Observation ifTrue: observationBlock.
	visitingStatus = #Simulation ifTrue: simulationBlock