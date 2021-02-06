instance creation
startingAt: initialState changingWith: change configuringSteppingWith: steppingConfigurator

	^self new
		initializeStartingAt: initialState
		changingBy: change
		configuringSteppingUsing: steppingConfigurator