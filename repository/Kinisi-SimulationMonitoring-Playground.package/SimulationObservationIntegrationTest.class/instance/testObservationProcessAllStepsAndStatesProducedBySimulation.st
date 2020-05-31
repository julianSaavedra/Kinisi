tests
testObservationProcessAllStepsAndStatesProducedBySimulation


	| observations simulationResults |
	self assertCollection: observations hasSameElements: simulationResults 