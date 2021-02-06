initialization
initializeStartingAt: targetSubject changingBy: targetChange configuringSteppingUsing: steppingConfigurator

	scenario := FixedDomainScenario with: targetSubject.
	domain := PluggableDomain stepUsing: steppingConfigurator.
	change := targetChange