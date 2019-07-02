initialize
initializeFrom: simulationStepCollection

	simulationSteps := simulationStepCollection sort: [:aStep :anotherStep | aStep key < anotherStep key ]