instance creation
from: simulationStepCollection 
	
	self assertNonNegativeTimes: simulationStepCollection.
	self assertUniquenessOfTimes: simulationStepCollection.
	^self new initializeFrom: simulationStepCollection 