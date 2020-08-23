initialization
initializeWith: targetSubject and: targetChange by: targetSteppingDefinition

	scenario := FixedDomainScenario with: targetSubject.
	change := targetChange.
	steppingDefinition := targetSteppingDefinition