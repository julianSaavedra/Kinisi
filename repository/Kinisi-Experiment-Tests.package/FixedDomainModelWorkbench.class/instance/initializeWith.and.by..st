initialization
initializeWith: targetSubject and: targetChange by: targetSteppingDefinition

	subject := FixedDomainScenario with: targetSubject.
	change := targetChange.
	steppingDefinition := targetSteppingDefinition