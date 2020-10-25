initialization
initializeStartingAt: targetSubject changingBy: targetChange andStepUsing: steppingConfigurator

	scenario := FixedDomainScenario with: targetSubject.
	domain := PluggableDomain stepUsing: steppingConfigurator.
	change := targetChange