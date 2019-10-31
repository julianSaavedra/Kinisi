instance creation
from: simulationStepCollection 
	
	self assertUniquenessOfTimes: simulationStepCollection.
	^self new initializeFrom: simulationStepCollection 