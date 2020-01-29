configuring
totalDuration: newTotalDuration
 
	self assertValid: newTotalDuration.
	self assert: stepDuration isNotLongerThan: newTotalDuration.
	totalDuration := newTotalDuration