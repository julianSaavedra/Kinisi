instance creation
basedOn: scenario changingWith: change over: stepDelta until: lastStep observingBasedOn: interface

	^ self new
		initializeBasedOn: scenario
		changingWith: change
		over: stepDelta
		unitl: lastStep
		observingBasedOn: interface