instance creation
startingWith: initialState changingBy: aBlock over: stepDuration during: duration informingStepsTo: consumer

	self assertValid: duration and: stepDuration. 
	^self
		startingWith: initialState
		changingBy: aBlock
		over: stepDuration
		until: [:step :state | step > duration ]
		informingStepsTo: consumer