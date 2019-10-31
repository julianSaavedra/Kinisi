initialize
initializeFrom: simulationStepCollection

	simulationSteps := simulationStepCollection sort: [:aStep :anotherStep | aStep time < anotherStep time ]