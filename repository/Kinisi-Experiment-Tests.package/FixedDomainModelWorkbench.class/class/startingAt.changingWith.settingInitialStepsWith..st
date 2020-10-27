instance creation
startingAt: initialState changingWith: change settingInitialStepsWith: steppingConfigurator

	^self new
		initializeStartingAt: initialState
		changingBy: change
		andStepUsing: steppingConfigurator