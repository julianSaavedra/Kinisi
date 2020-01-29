configuring
stepDuration: newStepDuration
 
	self assertValid: newStepDuration.
	self assert: newStepDuration isNotLongerThan: totalDuration.
	stepDuration := newStepDuration